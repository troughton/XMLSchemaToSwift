//
//  main.swift
//  XMLSchemaGeneration
//
//  Created by Thomas Roughton on 3/05/16.
//  Copyright © 2016 Thomas Roughton. All rights reserved.
//

import Foundation

var typealiasedStrings : Set<String> = ["String", "GlesTexcombinerOperandRgbEnum", "GlesTexcombinerOperandAlphaEnum"]
var simpleTypeNames : Set<String> = ["String", "Float", "NSDate"]

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
    case "AuthorEmail":
        fallthrough
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
        
        simpleTypeNames.insert(self.name)
    }
    
    func toSwift() -> String {
        return "typealias \(name) = \(base)"
    }
}

struct XMLEnumCase {
    let xmlName : String
    let name : String
    let type : String
    let documentation: String?
    let innerClass : XMLClass?
    
    init(xmlElement: NSXMLElement) {
        self.xmlName = xmlElement.attribute(forName: "name")!.stringValue!
        let name = varNameStringToSwiftName(xmlName)
        self.name = name
        let type = typeStringToSwiftType(xmlElement.attribute(forName: "type")?.stringValue! ?? name)
        self.type = type
        self.documentation = xmlElement.elements(forName: "xs:annotation").first?.elements(forName: "xs:documentation").first?.stringValue
        
        self.innerClass = xmlElement.elements(forName: "xs:complexType").first.map { XMLClass(xmlElement: $0, name: type) }
    }
    
    func toSwift() -> String {
        return "\t\t/**\(self.documentation ?? "")*/\n\t\tcase \(self.name)(\(self.type))"
    }
}

struct XMLEnum {
    let typeName : String
    let cases : [XMLEnumCase]
    
    init(xmlElement: NSXMLElement, typeName: String) {
        self.typeName = typeName
        self.cases = xmlElement.elements(forName: "xs:element").map { XMLEnumCase(xmlElement: $0) }
    }
    
    var initialiserText : String {
        
        var initialiserText = "\tinit?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {\n"
        
        for enumCase in self.cases {
            let isSimpleType = simpleTypeNames.contains(enumCase.type)
            
            initialiserText += "if xmlElement.name == \"\(enumCase.xmlName)\" {"
            if isSimpleType {
                initialiserText += "\tself = .\(enumCase.name)(\(enumCase.type)(xmlElement.stringValue!)!)\n"
            } else {
                initialiserText += "\tself = .\(enumCase.name)(\(enumCase.type)(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))\n"
            }
            initialiserText += "\treturn\n"
            initialiserText += "}\n"
            
            if !isSimpleType {
                initialiserText += "if let element = xmlElement.elements(forName: \"\(enumCase.xmlName)\").first {\n"
                initialiserText += "\tself = .\(enumCase.name)(\(enumCase.type)(xmlElement: element, sourcesToObjects: &sourcesToObjects))\n"
                initialiserText += "\treturn\n"
                initialiserText += "}\n"
            }
        }
        initialiserText += "return nil\n"
        initialiserText += "}"
        return initialiserText
    }
    
    func toSwift() -> String {
        return [self.cases.flatMap { $0.innerClass?.toSwift() }.joined(separator: "\n"),
                   "\tenum \(typeName) {",
                self.cases.map { $0.toSwift() }.joined(separator: "\n"),
                self.initialiserText,
                "\t}"].joined(separator: "\n")
    }
}

struct XMLAttribute {
    let xmlName : String
    let name : String
    let type : String
    let isRequired : Bool
    let documentation : String?
    
    init(xmlElement: NSXMLElement) {
        self.xmlName = xmlElement.attribute(forName: "name")!.stringValue!
        self.name = varNameStringToSwiftName(xmlName)
        self.type = typeStringToSwiftType(xmlElement.attribute(forName: "type")!.stringValue!)
        self.isRequired = xmlElement.attribute(forName: "use")?.stringValue! == "required"
        
        self.documentation = xmlElement.elements(forName: "xs:annotation").first?.elements(forName: "xs:documentation").first?.stringValue
    }
    
    var initialiserText : String {
        
        let unwrapCharacter = typealiasedStrings.contains(self.type) ? "" : "!"
        
        if isRequired {
            return "\t\tself.\(self.name) = \(type)(xmlElement.attribute(forName: \"\(xmlName)\")!.stringValue!)\(unwrapCharacter)\n"
        } else {
            return ["\t\tif let attribute = xmlElement.attribute(forName: \"\(xmlName)\") {",
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
    let xmlName : String
    let name : String
    let type : String
    let minOccurs : Int
    let maxOccurs : Int
    let documentation : String?
    let isForEnum : Bool
    
    let childClass : XMLClass?
    
    init?(xmlElement: NSXMLElement, name: String, type: String?, isForEnum : Bool = false) {
        let name = xmlElement.attribute(forName: "name")?.stringValue! ?? name
        if name.isEmpty {
            return nil
        }
        self.xmlName = name
        let swiftName = varNameStringToSwiftName(name)
        self.name = swiftName
        self.type = type ?? typeStringToSwiftType(xmlElement.attribute(forName: "type")?.stringValue! ?? swiftName)
        self.isForEnum = isForEnum
        
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
        
        if let childClass = xmlElement.elements(forName: "xs:complexType").first {
            self.childClass = XMLClass(xmlElement: childClass, name: self.type)
        } else {
            self.childClass = nil
        }
    }
    
    var initialiserText : String {
        
        let unwrapCharacter = typealiasedStrings.contains(self.type) ? "" : "!"
        
        switch (minOccurs, maxOccurs, simpleTypeNames.contains(type), self.isForEnum) {
        case (1, 1, false, false):
            return "\t\tself.\(self.name) = \(type)(xmlElement: xmlElement.elements(forName: \"\(self.xmlName)\").first!, sourcesToObjects: &sourcesToObjects)\n"
        case (1, 1, false, true):
            return "\t\tself.\(self.name) = \(type)(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!\n"
            
        case (1, 1, true, _):
            return "\t\tself.\(self.name) = \(type)(xmlElement.elements(forName: \"\(self.xmlName)\").first!.stringValue!)\(unwrapCharacter)\n"
            
        case (0, 1, false, false):
            return ["\t\tif let childElement = xmlElement.elements(forName: \"\(self.xmlName)\").first {",
                    "\t\t\tself.\(self.name) = \(type)(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)",
                    "\t\t} else { self.\(self.name) = nil }\n"].joined(separator: "\n")
         case (0, 1, false, true):
            return "\t\tself.\(self.name) = \(type)(xmlElement: xmlElement)\n"
        case (0, 1, true, _):
            return ["\t\tif let childElement = xmlElement.elements(forName: \"\(self.xmlName)\").first {",
                    "\t\t\tself.\(self.name) = \(type)(childElement.stringValue!)\(unwrapCharacter)",
                    "\t\t} else { self.\(self.name) = nil }\n"].joined(separator: "\n")
        case (_, _, false, false):
            return "\t\tself.\(self.name) = xmlElement.elements(forName: \"\(self.xmlName)\").map { \(type)(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }\n"
        case (_, _, false, true):
            return "\t\tself.\(self.name) = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { \(type)(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []\n"
        default:
            return "\t\tself.\(self.name) = xmlElement.elements(forName: \"\(self.xmlName)\").map { \(type)($0)\(unwrapCharacter) }\n"
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
        
        let subType = self.childClass?.toSwift() ?? ""
        
        return "\t\(subType)\n\t/**\(documentation ?? "")*/\n\tlet \(name): \(typeString)"
    }
}

struct XMLSequenceChoice {
    let sequenceElement : XMLSequenceElement
    let xmlEnum : XMLEnum
    
    init(xmlElement: NSXMLElement, variableName: String, typeName: String) {
        //We're on an xs:choice element.
        self.xmlEnum = XMLEnum(xmlElement: xmlElement, typeName: typeName)
        self.sequenceElement = XMLSequenceElement(xmlElement: xmlElement, name: variableName, type: typeName, isForEnum: true)!
    }
    
    var initialiserText : String {
        return self.sequenceElement.initialiserText
    }
    
    func toSwift() -> String {
        return self.xmlEnum.toSwift() + "\n" + self.sequenceElement.toSwift()
    }
}

struct XMLClass {
    let name : String
    let documentation : String?
    let attributes : [XMLAttribute]
    let sequenceElements : [XMLSequenceElement]
    let sequenceChoiceElements : [XMLSequenceChoice]
    let simpleContentType : String?
    
    init(xmlElement: NSXMLElement, name: String? = nil) {
        let className = name ?? xmlElement.attribute(forName: "name")!.stringValue!
        
        let name = typeStringToSwiftType(className)
        self.name = name
        
        self.documentation = xmlElement.elements(forName: "xs:annotation").first?.elements(forName: "xs:documentation").first?.stringValue
        
        self.attributes = xmlElement.elements(forName: "xs:attribute").map { XMLAttribute(xmlElement: $0) }
        
        if let sequence = xmlElement.elements(forName: "xs:sequence").first {
            self.sequenceElements = sequence.elements(forName: "xs:element").flatMap {
                return XMLSequenceElement(xmlElement: $0, name: "", type: nil) } ?? []
            self.sequenceChoiceElements = sequence.elements(forName: "xs:choice").enumerated().map { XMLSequenceChoice(xmlElement: $1, variableName: "choice\($0)", typeName: name + "Choice\($0)") }
        } else {
            self.sequenceElements = []
            self.sequenceChoiceElements = []
        }
        
        self.simpleContentType = xmlElement.elements(forName: "xs:simpleContent").first?.elements(forName: "xs:extension").first?.attribute(forName: "base").map { typeStringToSwiftType($0.stringValue!) }
    }
    
    var initialiserText : String {
        
        var initialiserText = "\tinit(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {\n"
        
        
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
        
        for sequenceChoiceElement in sequenceChoiceElements {
            initialiserText += sequenceChoiceElement.initialiserText
        }
        
        if (self.attributes.contains { $0.xmlName == "id" }) {
            initialiserText += "\t\t if let id = self.id {\n"
            initialiserText += "\t\t\tsourcesToObjects[self.id] = self"
            initialiserText += "\t\t}\n"
        }
        
        return initialiserText + "\t}\n"
    }
    
    func toSwift() -> String {
        return ["/**\(documentation ?? "\n")*/",
                   "final class \(name) : ColladaType {",
                   self.attributes.map { $0.toSwift() }.joined(separator: "\n\n"),
                   self.sequenceElements.map { $0.toSwift() }.joined(separator: "\n\n"),
                   self.sequenceChoiceElements.map { $0.toSwift() }.joined(separator: "\n\n"),
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

print("protocol ColladaType { }")

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
print("extension UInt8 : StringInitialisable {")
print("    init?(_ string: String) {")
print("        self.init(string, radix: 10)")
print("    }")
print("}")
print()
print("extension Bool : StringInitialisable {")
print("    init?(_ string: String) {")
print("        if string == \"true\" {")
print("             self = true")
print("        } else if string == \"false\" {")
print("             self = false")
print("        } else { return nil }")
print("    }")
print("}")
print()

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
