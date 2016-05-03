//
//  main.swift
//  XMLSchemaGeneration
//
//  Created by Thomas Roughton on 3/05/16.
//  Copyright © 2016 Thomas Roughton. All rights reserved.
//

import Foundation

var typealiasedStrings : Set<String> = ["String"]

func typeStringToSwiftType(_ typeString : String) -> String {
    let transformedComponents = typeString.components(separatedBy: "_")
    let modifiedTypeString = transformedComponents.map { string in
        // The start index is the first letter
        let first = string.startIndex
        let rest = first.successor()..<string.endIndex
        return string[first...first].uppercased() + string[rest]
        }.joined(separator: "")
    
    switch modifiedTypeString {
        
    case "Xs:double":
        return "Double"
    case "Xs:long":
        return "Int"
    case "Xs:int":
        return "Int32"
    case "Xs:unsignedLong":
        return "UInt"
    case "Xs:byte":
        fallthrough
    case "Xs:hexBinary":
        return "[UInt8]"
    case "Xs:short":
        return "Int16"
    case "Xs:unsignedByte":
        return "UInt8"
    case "Xs:unsignedInt":
        fallthrough
    case "Xs:positiveInteger":
        fallthrough
    case "Xs:nonNegativeInteger":
        return "UInt32"
    case "Xs:float":
        return "Float"
    case "Xs:dateTime":
        return "NSDate"
    case "Xs:IDREFS":
        fallthrough
    case "Xs:anyURI":
        fallthrough
    case "Xs:Name":
        fallthrough
    case "Xs:NMTOKEN":
        fallthrough
    case "Xs:ID":
        fallthrough
    case "Xs:token":
        fallthrough
    case "Xs:NCName":
        fallthrough
    case "Xs:string":
        return "String"
    case "Xs:boolean":
        return "Bool"
    default:
        return modifiedTypeString
    }
}

func varNameStringToSwiftName(_ typeString : String) -> String {
    let transformedComponents = typeString.components(separatedBy: "_")
    let varName = transformedComponents.first! + transformedComponents.dropFirst().map { string in
        // The start index is the first letter
        let first = string.startIndex
        let rest = first.successor()..<string.endIndex
        return string[first...first].uppercased() + string[rest]
        }.joined(separator: "")
    if varName == "operator" { return "theOperator" }
    return varName
}

struct XMLSimpleType {
    let name : String
    let base : String
    
    init(xmlElement: NSXMLElement) {
        self.name = typeStringToSwiftType(xmlElement.attribute(forName: "name")!.stringValue!)
        
        if let restriction = xmlElement.elements(forName: "xs:restriction").first {
            self.base = typeStringToSwiftType(restriction.attribute(forName: "base")!.stringValue!)
            
        } else if let list = xmlElement.elements(forName: "xs:list").first {
            let elementType = typeStringToSwiftType(list.attribute(forName: "itemType")!.stringValue!)
            self.base = "[\(elementType)]"
        } else if let _ = xmlElement.elements(forName: "xs:union").first {
            self.base = "Int32"
        } else {
            fatalError()
        }
        
        if self.base == "String" {
            typealiasedStrings.insert(self.name)
        }
    }
    
    func toSwift() -> String {
        return "typealias \(name) = \(base)"
    }
}

struct XMLAttribute {
    let name : String
    let type : String
    let isRequired : Bool
    let documentation : String?
    
    init(xmlElement: NSXMLElement) {
        self.name = varNameStringToSwiftName(xmlElement.attribute(forName: "name")!.stringValue!)
        self.type = typeStringToSwiftType(xmlElement.attribute(forName: "type")!.stringValue!)
        self.isRequired = xmlElement.attribute(forName: "use")?.stringValue! == "required"
        
        self.documentation = xmlElement.elements(forName: "xs:annotation").first?.elements(forName: "xs:documentation").first?.stringValue
    }
    
    var initialiserText : String {
        
        let unwrapCharacter = typealiasedStrings.contains(self.type) ? "" : "!"
        
        if isRequired {
            return "\t\tself.\(self.name) = \(type)(xmlElement.attribute(forName: \"\(name)\")!.stringValue!)\(unwrapCharacter)\n"
        } else {
            return ["\t\tif let attribute = xmlElement.attribute(forName: \"\(name)\") {",
                    "\t\t\tself.\(self.name) = \(type)(attribute.stringValue!)\(unwrapCharacter)",
                    "\t\t} else { self.\(self.name) = nil }\n"
            ].joined(separator: "\n")
        }
    }
    
    func toSwift() -> String {
        return "\t/**\(documentation ?? "")*/\n\tlet \(name): \(type)\(isRequired ? "" : "?")"
    }
}

struct XMLSequenceElement {
    let name : String
    let type : String
    let minOccurs : Int
    let maxOccurs : Int
    let documentation : String?
    
    init?(xmlElement: NSXMLElement) {
        guard let name = xmlElement.attribute(forName: "name")?.stringValue! else { return nil }
        self.name = varNameStringToSwiftName(name)
        self.type = typeStringToSwiftType(xmlElement.attribute(forName: "type")?.stringValue! ?? "Any")
        let minOccursString = xmlElement.attribute(forName: "minOccurs")?.stringValue!
        self.minOccurs = minOccursString != nil ? Int(minOccursString!)! : 1
        
        let maxOccursString = xmlElement.attribute(forName: "maxOccurs")?.stringValue!
        if let maxOccursString = maxOccursString {
            if maxOccursString == "unbounded" {
                self.maxOccurs = Int.max
            } else {
                self.maxOccurs = Int(maxOccursString)!
            }
        } else {
            self.maxOccurs = 1
        }
        
        self.documentation = xmlElement.elements(forName: "xs:annotation").first?.elements(forName: "xs:documentation").first?.stringValue
    }
    
    var initialiserText : String {
        switch (minOccurs, maxOccurs) {
        case (1, 1):
            return "\t\tself.\(self.name) = \(type)(xmlElement: xmlElement.elements(forName: \"\(self.name)\").first!)\n"
        case (0, 1):
            return ["\t\tif let childElement = xmlElement.elements(forName: \"\(self.name)\").first {",
                    "\t\t\tself.\(self.name) = \(type)(xmlElement: childElement)",
                    "\t\t} else { self.\(self.name) = nil }\n"].joined(separator: "\n")
        default:
            return "\t\tself.\(self.name) = xmlElement.elements(forName: \"\(self.name)\").map { \(type)(xmlElement: $0) }\n"
        }
    }
    
    func toSwift() -> String {
        let typeString : String
        switch (minOccurs, maxOccurs) {
        case (1, 1):
            typeString = self.type
        case (0, 1):
            typeString = "\(self.type)?"
        default:
            typeString = "[\(self.type)]"
        }
        
        return "\t/**\(documentation ?? "")*/\n\tlet \(name): \(typeString)"
    }
}

struct XMLClass {
    let name : String
    let documentation : String?
    let attributes : [XMLAttribute]
    let sequenceElements : [XMLSequenceElement]
    let simpleContentType : String?
    
    init(xmlElement: NSXMLElement) {
        let className = xmlElement.attribute(forName: "name")!.stringValue!
        
        self.name = typeStringToSwiftType(className)
        
        self.documentation = xmlElement.elements(forName: "xs:annotation").first?.elements(forName: "xs:documentation").first?.stringValue
        
        self.attributes = xmlElement.elements(forName: "xs:attribute").map { XMLAttribute(xmlElement: $0) }
        self.sequenceElements = xmlElement.elements(forName: "xs:sequence").first?.elements(forName: "xs:element").flatMap { XMLSequenceElement(xmlElement: $0) } ?? []
        
        self.simpleContentType = xmlElement.elements(forName: "xs:simpleContent").first?.elements(forName: "xs:extension").first?.attribute(forName: "base").map { typeStringToSwiftType($0.stringValue!) }
    }
    
    var initialiserText : String {
        
        var initialiserText = "\tinit(xmlElement: NSXMLElement) {\n"
        
        
        if let simpleContentType = self.simpleContentType {
            let unwrapCharacter = typealiasedStrings.contains(simpleContentType) ? "" : "!"
            initialiserText += "\t\tself.data = \(simpleContentType)(xmlElement.stringValue!)\(unwrapCharacter)\n"
        }
        
        for attribute in attributes {
            initialiserText += attribute.initialiserText
        }
        
        for sequenceElement in sequenceElements {
            initialiserText += sequenceElement.initialiserText
        }
        
        return initialiserText + "\t}\n"
    }
    
    func toSwift() -> String {
        return ["/**\(documentation ?? "\n")*/",
                   "class \(name) {",
                   self.attributes.map { $0.toSwift() }.joined(separator: "\n\n"),
                   self.sequenceElements.map { $0.toSwift() }.joined(separator: "\n\n"),
                   (self.simpleContentType != nil ? "\tlet data: \(self.simpleContentType!)" : ""),
                "",
                self.initialiserText,
                "}"].joined(separator: "\n")
    }
}

let document = try! NSXMLDocument(contentsOf: NSURL(string: "https://www.khronos.org/files/collada_schema_1_5")!, options: 0)
let typealiases = document.rootElement()!.elements(forName: "xs:simpleType")
let classes = document.rootElement()!.elements(forName: "xs:complexType")

print("import Foundation\n\n")

print("protocol StringInitialisable {")
print("    init?(_ text: String)")
print("}")
print()
print("extension Int : StringInitialisable {")
print("    init?(_ string: String) {")
print("        self.init(string, radix: 10)")
print("    }")
print("}")
print("extension UInt : StringInitialisable {")
print("    init?(_ string: String) {")
print("        self.init(string, radix: 10)")
print("    }")
print("}")

print("")
print("extension Float : StringInitialisable {}")
print("extension String : StringInitialisable {}")
print("extension Double : StringInitialisable {}")
print("")
print("extension Array where Element : StringInitialisable {")
print("    init?(_ string: String) {")
print("        let components = string.components(separatedBy: .whitespaces())")
print("        self = components.flatMap { Element($0) }")
print("    }")
print("}")
print("")

for xmlNode in typealiases {
    print(XMLSimpleType(xmlElement: xmlNode).toSwift())
}

for xmlNode in classes {
    
    print(XMLClass(xmlElement: xmlNode).toSwift())
}
