import Foundation


protocol ColladaType { }
protocol StringInitialisable {
	init?(_ text: String)
}

extension Int : StringInitialisable {
	init?(_ string: String) {
		self.init(string, radix: 10)
	}
}
extension UInt : StringInitialisable {
	init?(_ string: String) {
		self.init(string, radix: 10)
	}
}
extension UInt8 : StringInitialisable {
	init?(_ string: String) {
		self.init(string, radix: 10)
	}
}

extension Bool : StringInitialisable {
	init?(_ string: String) {
		if string == "true" {
			 self = true
		} else if string == "false" {
			 self = false
		} else { return nil }
	}
}


extension Float : StringInitialisable {}
extension String : StringInitialisable {}
extension Double : StringInitialisable {}

extension Array where Element : StringInitialisable {
	init?(_ string: String) {
		let components = string.components(separatedBy: .whitespaces())
		self = components.flatMap { Element($0) }
	}
}

typealias FloatType = Double
typealias IntType = Int
typealias UintType = UInt
typealias SidrefType = String
typealias SidType = String
typealias ListOfBoolsType = [Bool]
typealias ListOfFloatsType = [FloatType]
typealias ListOfHexBinaryType = [[UInt8]]
typealias ListOfIntsType = [IntType]
typealias ListOfNamesType = [String]
typealias ListOfIdrefsType = [String]
typealias ListOfSidrefsType = [SidrefType]
typealias ListOfTokensType = [String]
typealias ListOfUintsType = [UintType]
typealias Bool2Type = ListOfBoolsType
typealias Bool3Type = ListOfBoolsType
typealias Bool4Type = ListOfBoolsType
typealias Bool2x2Type = ListOfBoolsType
typealias Bool2x3Type = ListOfBoolsType
typealias Bool2x4Type = ListOfBoolsType
typealias Bool3x2Type = ListOfBoolsType
typealias Bool3x3Type = ListOfBoolsType
typealias Bool3x4Type = ListOfBoolsType
typealias Bool4x2Type = ListOfBoolsType
typealias Bool4x3Type = ListOfBoolsType
typealias Bool4x4Type = ListOfBoolsType
typealias Float2Type = ListOfFloatsType
typealias Float3Type = ListOfFloatsType
typealias Float4Type = ListOfFloatsType
typealias Float7Type = ListOfFloatsType
typealias Float2x2Type = ListOfFloatsType
typealias Float2x3Type = ListOfFloatsType
typealias Float2x4Type = ListOfFloatsType
typealias Float3x2Type = ListOfFloatsType
typealias Float3x3Type = ListOfFloatsType
typealias Float3x4Type = ListOfFloatsType
typealias Float4x2Type = ListOfFloatsType
typealias Float4x3Type = ListOfFloatsType
typealias Float4x4Type = ListOfFloatsType
typealias Int2Type = ListOfIntsType
typealias Int3Type = ListOfIntsType
typealias Int4Type = ListOfIntsType
typealias Int2x2Type = ListOfIntsType
typealias Int2x3Type = ListOfIntsType
typealias Int2x4Type = ListOfIntsType
typealias Int3x2Type = ListOfIntsType
typealias Int3x3Type = ListOfIntsType
typealias Int3x4Type = ListOfIntsType
typealias Int4x2Type = ListOfIntsType
typealias Int4x3Type = ListOfIntsType
typealias Int4x4Type = ListOfIntsType
typealias DigitsType = UInt8
typealias MagnitudeType = Int16
typealias MorphMethodEnum = String
typealias NodeEnum = String
typealias SamplerBehaviorEnum = String
typealias UrifragmentType = String
typealias UpAxisEnum = String
typealias VersionEnum = String
typealias ImageFaceEnum = String
typealias ImageFormatHintChannelsEnum = String
typealias ImageFormatHintPrecisionEnum = String
typealias ImageFormatHintRangeEnum = String
typealias AltitudeModeEnum = String
typealias FxColorType = Float4Type
typealias FxOpaqueEnum = String
typealias FxSamplerWrapEnum = String
typealias FxSamplerMinFilterEnum = String
typealias FxSamplerMagFilterEnum = String
typealias FxSamplerMipFilterEnum = String
typealias FxModifierEnum = String
typealias FxDrawType = String
typealias FxPipelineStageEnum = String
typealias GlMaxLightsIndexType = UInt32
typealias GlMaxClipPlanesIndexType = UInt32
typealias GlMaxTextureImageUnitsIndexType = UInt32
typealias GlBlendEnum = String
typealias GlFaceEnum = String
typealias GlBlendEquationEnum = String
typealias GlFuncEnum = String
typealias GlStencilOpEnum = String
typealias GlMaterialEnum = String
typealias GlFogEnum = String
typealias GlFogCoordSrcEnum = String
typealias GlFrontFaceEnum = String
typealias GlLightModelColorControlEnum = String
typealias GlLogicOpEnum = String
typealias GlPolygonModeEnum = String
typealias GlShadeModelEnum = String
typealias GlAlphaValueType = Float
typealias GlEnumerationType = Int32
typealias GlesMaxLightsIndexType = UInt32
typealias GlesMaxClipPlanesIndexType = UInt32
typealias GlesMaxTextureCoordsIndexType = UInt32
typealias GlesMaxTextureImageUnitsIndexType = UInt32
typealias GlesTexenvModeEnum = String
typealias GlesTexcombinerOperatorRgbEnum = String
typealias GlesTexcombinerOperatorAlphaEnum = String
typealias GlesTexcombinerSourceEnum = String
typealias GlesTexcombinerOperandRgbEnum = GlBlendEnum
typealias GlesTexcombinerOperandAlphaEnum = GlBlendEnum
typealias GlesTexcombinerArgumentIndexType = UInt32
typealias GlesSamplerWrapEnum = String
typealias GlesStencilOpEnum = String
typealias GlesEnumerationType = Int32
typealias SpringEnum = String
typealias CommonProfileInputEnum = String
typealias CommonProfileParamEnum = String
typealias DynamicLimitType = Float2Type
/**
			The input_global_type element is used to represent inputs that can reference external resources.
			*/
final class InputGlobalType : ColladaType {
	/**
				The semantic attribute is the user-defined meaning of the input connection. Required attribute.
				*/
	let semantic: String

	/**
				The source attribute indicates the location of the data source. Required attribute.
				*/
	let source: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
	}

}
/**
			The input_local_type element is used to represent inputs that can only reference resources declared in the same document.
			*/
final class InputLocalType : ColladaType {
	/**
				The semantic attribute is the user-defined meaning of the input connection. Required attribute.
				*/
	let semantic: String

	/**
				The source attribute indicates the location of the data source. Required attribute.
				*/
	let source: UrifragmentType




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.source = UrifragmentType(xmlElement.attribute(forName: "source")!.stringValue!)
	}

}
/**
			The input_local_offset_type element is used to represent indexed inputs that can only reference resources declared in the same document.
			*/
final class InputLocalOffsetType : ColladaType {
	/**
				The offset attribute represents the offset into the list of indices.  If two input elements share 
				the same offset, they will be indexed the same.  This works as a simple form of compression for the 
				list of indices as well as defining the order the inputs should be used in.  Required attribute.
				*/
	let offset: UintType

	/**
				The semantic attribute is the user-defined meaning of the input connection. Required attribute.
				*/
	let semantic: String

	/**
				The source attribute indicates the location of the data source. Required attribute.
				*/
	let source: UrifragmentType

	/**
				The set attribute indicates which inputs should be grouped together as a single set. This is helpful 
				when multiple inputs share the same semantics. 
				*/
	let set: UintType?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.offset = UintType(xmlElement.attribute(forName: "offset")!.stringValue!)!
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.source = UrifragmentType(xmlElement.attribute(forName: "source")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "set") {
			self.set = UintType(attribute.stringValue!)!
		} else { self.set = nil }
	}

}
/**
			The targetable_float_type element is used to represent elements which contain a single float value which can 
			be targeted for animation.
			*/
final class TargetableFloatType : ColladaType {



	let data: FloatType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
			The targetable_float3_type element is used to represent elements which contain a float3 value which can 
			be targeted for animation.
			*/
final class TargetableFloat3Type : ColladaType {



	let data: Float3Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float3Type(xmlElement.stringValue!)!
	}

}
/**
			The token_array_type element declares the storage for a homogenous array of xs:token string values.
			*/
final class TokenArrayType : ColladaType {



	let data: ListOfTokensType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = ListOfTokensType(xmlElement.stringValue!)!
	}

}
/**
			The IDREF_array element declares the storage for a homogenous array of ID reference values.
			*/
final class IdrefArrayType : ColladaType {



	let data: String

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
			The Name_array element declares the storage for a homogenous array of Name string values.
			*/
final class NameArrayType : ColladaType {



	let data: ListOfNamesType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = ListOfNamesType(xmlElement.stringValue!)!
	}

}
/**
			The bool_array element declares the storage for a homogenous array of boolean values.
			*/
final class BoolArrayType : ColladaType {



	let data: ListOfBoolsType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = ListOfBoolsType(xmlElement.stringValue!)!
	}

}
/**
			The float_array element declares the storage for a homogenous array of floating point values.
			*/
final class FloatArrayType : ColladaType {



	let data: ListOfFloatsType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = ListOfFloatsType(xmlElement.stringValue!)!
	}

}
/**
			The int_array element declares the storage for a homogenous array of integer values.
			*/
final class IntArrayType : ColladaType {



	let data: ListOfIntsType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = ListOfIntsType(xmlElement.stringValue!)!
	}

}
/**
			The param element declares parametric information regarding its parent element.
			*/
final class ParamType : ColladaType {



	let data: String

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
			The accessor element declares an access pattern to one of the array elements: float_array, 
			int_array, Name_array, bool_array, token_array, and IDREF_array. The accessor element describes access 
			to arrays that are organized in either an interleaved or non-interleaved manner, depending 
			on the offset and stride attributes.
			*/
final class AccessorType : ColladaType {
	/**
					The count attribute indicates the number of times the array is accessed. Required attribute.
					*/
	let count: UintType

	/**
					The offset attribute indicates the index of the first value to be read from the array. 
					The default value is 0. Optional attribute.
					*/
	let offset: UintType?

	/**
					The source attribute indicates the location of the array to access using a URL expression. Required attribute.
					*/
	let source: String

	/**
					The stride attribute indicates number of values to be considered a unit during each access to 
					the array. The default value is 1, indicating that a single value is accessed. Optional attribute.
					*/
	let stride: UintType?

	/**
						The accessor element may have any number of param elements.
						*/
	let param: [ParamType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "offset") {
			self.offset = UintType(attribute.stringValue!)!
		} else { self.offset = nil }
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "stride") {
			self.stride = UintType(attribute.stringValue!)!
		} else { self.stride = nil }
		self.param = xmlElement.elements(forName: "param").map { ParamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The p element represents primitive data for the primitive types (lines, linestrips, polygons, 
			polylist, triangles, trifans, tristrips). The p element contains indices that reference into 
			the parent's source elements referenced by the input elements.
			*/
final class PType : ColladaType {



	let data: ListOfUintsType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = ListOfUintsType(xmlElement.stringValue!)!
	}

}
/**
			The lookat element contains a position and orientation transformation suitable for aiming a camera.
			The lookat element contains three mathematical vectors within it that describe: 
			1.	The position of the object;
			2.	The position of the interest point;
			3.	The direction that points up.
			*/
final class LookatType : ColladaType {



	let data: Float3x3Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float3x3Type(xmlElement.stringValue!)!
	}

}
/**
			Matrix transformations embody mathematical changes to points within a coordinate systems or the 
			coordinate system itself. The matrix element contains a 4-by-4 matrix of floating-point values.
			*/
final class MatrixType : ColladaType {



	let data: Float4x4Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float4x4Type(xmlElement.stringValue!)!
	}

}
/**
			The scale element contains a mathematical vector that represents the relative proportions of the 
			X, Y and Z axes of a coordinated system.
			*/
final class ScaleType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			The skew element contains an angle and two mathematical vectors that represent the axis of 
			rotation and the axis of translation.
			*/
final class SkewType : ColladaType {



	let data: Float7Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float7Type(xmlElement.stringValue!)!
	}

}
/**
			The translate element contains a mathematical vector that represents the distance along the 
			X, Y and Z-axes.
			*/
final class TranslateType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class ImageSourceType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class ImageMipsType : ColladaType {
	/**Zero is max levels = 1 + floor(log2(max(w, h, d)))
in both OpenGL and DirectX.  One is no mips.*/
	let levels: UInt32

	/**regenerate the mipmaps based on information loaded into mip0*/
	let autoGenerate: Bool




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.levels = UInt32(xmlElement.attribute(forName: "levels")!.stringValue!)!
		self.autoGenerate = Bool(xmlElement.attribute(forName: "auto_generate")!.stringValue!)!
	}

}
/**
			The channel element declares an output channel of an animation.
			*/
final class ChannelType : ColladaType {
	/**
					The source attribute indicates the location of the sampler using a URL expression. 
					The sampler must be declared within the same document. Required attribute.
					*/
	let source: UrifragmentType

	/**
					The target attribute indicates the location of the element bound to the output of the sampler. 
					This text string is a path-name following a simple syntax described in Address Syntax. 
					Required attribute.
					*/
	let target: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.source = UrifragmentType(xmlElement.attribute(forName: "source")!.stringValue!)
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
	}

}
/**
			The sampler element declares an N-dimensional function used for animation. Animation function curves 
			are represented by 1-D sampler elements in COLLADA. The sampler defines sampling points and how to 
			interpolate between them.
			*/
final class SamplerType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					Indicates what the sampled value should be before the first key.
		*/
	let preBehavior: SamplerBehaviorEnum?

	/**
					Indicates what the sampled value should be after the last key.
		*/
	let postBehavior: SamplerBehaviorEnum?

	/**
						The input element must occur at least one time. These inputs are local inputs.
						*/
	let input: [InputLocalType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "pre_behavior") {
			self.preBehavior = SamplerBehaviorEnum(attribute.stringValue!)
		} else { self.preBehavior = nil }
		if let attribute = xmlElement.attribute(forName: "post_behavior") {
			self.postBehavior = SamplerBehaviorEnum(attribute.stringValue!)
		} else { self.postBehavior = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The technique element declares the information used to process some portion of the content. Each 
			technique conforms to an associated profile. Techniques generally act as a "switch". If more than 
			one is present for a particular portion of content, on import, one or the other is picked, but 
			usually not both. Selection should be based on which profile the importing application can support.
			Techniques contain application data and programs, making them assets that can be managed as a unit.
			*/
final class TechniqueType : ColladaType {
	/**
					The profile attribute indicates the type of profile. This is a vendor defined character 
					string that indicates the platform or capability target for the technique. Required attribute.
					*/
	let profile: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.profile = String(xmlElement.attribute(forName: "profile")!.stringValue!)
	}

}
/**
			The extra element declares additional information regarding its parent element.
			*/
final class ExtraType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The type attribute indicates the type of the value data. This text string must be understood by 
					the application. Optional attribute.
					*/
	let type: String?

	/**
						The extra element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						This element must contain at least one non-common profile technique.
						*/
	let technique: [TechniqueType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "type") {
			self.type = String(attribute.stringValue!)
		} else { self.type = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The polylist element provides the information needed to bind vertex attributes together and 
			then organize those vertices into individual polygons. The polygons described in polylist can 
			contain arbitrary numbers of vertices. Unlike the polygons element, the polylist element cannot 
			contain polygons with holes.
			*/
final class PolylistType : ColladaType {
	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The count attribute indicates the number of polygon primitives. Required attribute.
					*/
	let count: UintType

	/**
					The material attribute declares a symbol for a material. This symbol is bound to a material at 
					the time of instantiation. If the material attribute is not specified then the lighting and 
					shading results are application defined. Optional attribute.
					*/
	let material: String?

	/**
						The input element may occur any number of times. This input is a local input with the 
						offset and set attributes.
						*/
	let input: [InputLocalOffsetType]


	/**
						The vcount element contains a list of integers describing the number of sides for each polygon 
						described by the polylist element. The vcount element may occur once.
						*/
	let vcount: ListOfUintsType?


	/**
						The polylist element may have zero or one p element.
						*/
	let p: PType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "vcount").first {
			self.vcount = ListOfUintsType(childElement.stringValue!)!
		} else { self.vcount = nil }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The polygons element provides the information needed to bind vertex attributes together and 
			then organize those vertices into individual polygons. The polygons described can contain 
			arbitrary numbers of vertices. These polygons may be self intersecting and may also contain holes.
			*/
final class PolygonsType : ColladaType {
	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The count attribute indicates the number of polygon primitives. Required attribute.
					*/
	let count: UintType

	/**
					The material attribute declares a symbol for a material. This symbol is bound to a material 
					at the time of instantiation. If the material attribute is not specified then the lighting 
					and shading results are application defined. Optional attribute. 
					*/
	let material: String?

	/**
						The input element may occur any number of times. This input is a local input with the 
						offset and set attributes.
						*/
	let input: [InputLocalOffsetType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]
/**
*/
final class Ph : ColladaType {


	/**
										There may only be one p element.
										*/
	let p: PType


	/**
										The h element represents a hole in the polygon specified. There must be at least one h element.
										*/
	let h: [ListOfUintsType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.p = PType(xmlElement: xmlElement.elements(forName: "p").first!, sourcesToObjects: &sourcesToObjects)
		self.h = xmlElement.elements(forName: "h").map { ListOfUintsType($0.stringValue!)! }
	}

}
	enum PolygonsTypeChoice0 {
		/**
							The p element may occur any number of times.
							*/
		case p(PType)
		/**
							The ph element may occur any number of times. It describes a polygon with holes.
							*/
		case ph(Ph)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "p" {	self = .p(PType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "p").first {
	self = .p(PType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "ph" {	self = .ph(Ph(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "ph").first {
	self = .ph(Ph(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [PolygonsTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { PolygonsTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**
			The linestrips element provides the information needed to bind vertex attributes together and 
			then organize those vertices into connected line-strips. Each line-strip described by the mesh 
			has an arbitrary number of vertices. Each line segment within the line-strip is formed from the 
			current vertex and the preceding vertex.
			*/
final class LinestripsType : ColladaType {
	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The count attribute indicates the number of linestrip primitives. Required attribute.
					*/
	let count: UintType

	/**
					The material attribute declares a symbol for a material. This symbol is bound to a material 
					at the time of instantiation. If the material attribute is not specified then the lighting 
					and shading results are application defined. Optional attribute.
					*/
	let material: String?

	/**
						The input element may occur any number of times. This input is a local input with the offset 
						and set attributes.
						*/
	let input: [InputLocalOffsetType]


	/**
						The linestrips element may have any number of p elements.
						*/
	let p: [PType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.p = xmlElement.elements(forName: "p").map { PType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The tristrips element provides the information needed to bind vertex attributes together and then 
			organize those vertices into connected triangles. Each triangle described by the mesh has three 
			vertices. The first triangle is formed from first, second, and third vertices. Each subsequent 
			triangle is formed from the current vertex, reusing the previous two vertices.
			*/
final class TristripsType : ColladaType {
	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The count attribute indicates the number of triangle strip primitives. Required attribute.
					*/
	let count: UintType

	/**
					The material attribute declares a symbol for a material. This symbol is bound to a material 
					at the time of instantiation. If the material attribute is not specified then the lighting 
					and shading results are application defined. Optional attribute.
					*/
	let material: String?

	/**
						The input element may occur any number of times. This input is a local input with the offset 
						and set attributes.
						*/
	let input: [InputLocalOffsetType]


	/**
						The tristrips element may have any number of p elements.
						*/
	let p: [PType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.p = xmlElement.elements(forName: "p").map { PType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The lines element provides the information needed to bind vertex attributes together and then 
			organize those vertices into individual lines. Each line described by the mesh has two vertices. 
			The first line is formed from first and second vertices. The second line is formed from the 
			third and fourth vertices and so on.
			*/
final class LinesType : ColladaType {
	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The count attribute indicates the number of line primitives. Required attribute.
					*/
	let count: UintType

	/**
					The material attribute declares a symbol for a material. This symbol is bound to a material at 
					the time of instantiation. If the material attribute is not specified then the lighting and 
					shading results are application defined. Optional attribute.
					*/
	let material: String?

	/**
						The input element may occur any number of times. This input is a local input with the offset 
						and set attributes.
						*/
	let input: [InputLocalOffsetType]


	/**
						The lines element may have zero or one p element.
						*/
	let p: PType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The triangles element provides the information needed to bind vertex attributes together and 
			then organize those vertices into individual triangles.	Each triangle described by the mesh has 
			three vertices. The first triangle is formed from the first, second, and third vertices. The 
			second triangle is formed from the fourth, fifth, and sixth vertices, and so on.
			*/
final class TrianglesType : ColladaType {
	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The count attribute indicates the number of triangle primitives. Required attribute.
					*/
	let count: UintType

	/**
					The material attribute declares a symbol for a material. This symbol is bound to a material at 
					the time of instantiation. Optional attribute. If the material attribute is not specified then 
					the lighting and shading results are application defined.
					*/
	let material: String?

	/**
						The input element may occur any number of times. This input is a local input with the 
						offset and set attributes.
						*/
	let input: [InputLocalOffsetType]


	/**
						The triangles element may have zero or one p element.
						*/
	let p: PType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The trifans element provides the information needed to bind vertex attributes together and then 
			organize those vertices into connected triangles. Each triangle described by the mesh has three 
			vertices. The first triangle is formed from first, second, and third vertices. Each subsequent 
			triangle is formed from the current vertex, reusing the first and the previous vertices.
			*/
final class TrifansType : ColladaType {
	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The count attribute indicates the number of triangle fan primitives. Required attribute.
					*/
	let count: UintType

	/**
					The material attribute declares a symbol for a material. This symbol is bound to a material 
					at the time of instantiation. If the material attribute is not specified then the lighting 
					and shading results are application defined. Optional attribute.
					*/
	let material: String?

	/**
						The input element may occur any number of times. This input is a local input with the 
						offset and set attributes.
						*/
	let input: [InputLocalOffsetType]


	/**
						The trifans element may have any number of p elements.
						*/
	let p: [PType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.p = xmlElement.elements(forName: "p").map { PType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The vertices element declares the attributes and identity of mesh-vertices. The vertices element
			describes mesh-vertices in a mesh geometry. The mesh-vertices represent the position (identity) 
			of the vertices comprising the mesh and other vertex attributes that are invariant to tessellation.
			*/
final class VerticesType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This 
					value must be unique within the instance document. Required attribute.
					*/
	let id: String

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The input element must occur at least one time. These inputs are local inputs.
						*/
	let input: [InputLocalType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		 sourcesToObjects[self.id] = self
    }

}
/**
			The asset element defines asset management information regarding its parent element.
			*/
final class AssetType : ColladaType {

	/**
*/
final class Contributor : ColladaType {


	/**
									The author element contains a string with the author's name.
									There may be only one author element.
									*/
	let author: String?


	/**Contains a string with author's email address. String that compliant with RFC 2822 section 3.4. This element has no attributes. There may be only one author email address.*/
	let authorEmail: String?


	/**Contains a URI reference (xs:anyURI) to author's website.  This element has no attributes.   There may be only one author website.*/
	let authorWebsite: String?


	/**
									The authoring_tool element contains a string with the authoring tool's name.
									There may be only one authoring_tool element.
									*/
	let authoringTool: String?


	/**
									The comments element contains a string with comments from this contributor.
									There may be only one comments element.
									*/
	let comments: String?


	/**
									The copyright element contains a string with copyright information.
									There may be only one copyright element.
									*/
	let copyright: String?


	/**
									The source_data element contains a URI reference to the source data used for this asset.
									There may be only one source_data element.
									*/
	let sourceData: String?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "author").first {
			self.author = String(childElement.stringValue!)
		} else { self.author = nil }
		if let childElement = xmlElement.elements(forName: "author_email").first {
			self.authorEmail = String(childElement.stringValue!)
		} else { self.authorEmail = nil }
		if let childElement = xmlElement.elements(forName: "author_website").first {
			self.authorWebsite = String(childElement.stringValue!)
		} else { self.authorWebsite = nil }
		if let childElement = xmlElement.elements(forName: "authoring_tool").first {
			self.authoringTool = String(childElement.stringValue!)
		} else { self.authoringTool = nil }
		if let childElement = xmlElement.elements(forName: "comments").first {
			self.comments = String(childElement.stringValue!)
		} else { self.comments = nil }
		if let childElement = xmlElement.elements(forName: "copyright").first {
			self.copyright = String(childElement.stringValue!)
		} else { self.copyright = nil }
		if let childElement = xmlElement.elements(forName: "source_data").first {
			self.sourceData = String(childElement.stringValue!)
		} else { self.sourceData = nil }
	}

}
	/**
						The contributor element defines authoring information for asset management
						*/
	let contributor: [Contributor]

	/**
*/
final class Coverage : ColladaType {

	/**
*/
final class GeographicLocation : ColladaType {


	/***/
	let longitude: Float


	/***/
	let latitude: Float

	/**
*/
final class Altitude : ColladaType {



	let data: Float

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float(xmlElement.stringValue!)!
	}

}
	/**
												 Altitude is always given in meters.  If the mode is "absolute", then the value is interpreted as meters from mean sea level.  If the mode is "relativeToGround" then the value is interpreted as meters above the actual ground elevation at that particular location. 
												*/
	let altitude: Altitude



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.longitude = Float(xmlElement.elements(forName: "longitude").first!.stringValue!)!
		self.latitude = Float(xmlElement.elements(forName: "latitude").first!.stringValue!)!
		self.altitude = Altitude(xmlElement: xmlElement.elements(forName: "altitude").first!, sourcesToObjects: &sourcesToObjects)
	}

}
	/**
									Specifies the location of the asset using the WGS84 coordinate system. 
									*/
	let geographicLocation: GeographicLocation?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "geographic_location").first {
			self.geographicLocation = GeographicLocation(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.geographicLocation = nil }
	}

}
	/***/
	let coverage: Coverage?



	/**
						The keywords element contains a list of words used as search criteria for the parent element. 
						There may be only one keywords element.
						*/
	let keywords: String?




	/**
						The revision element contains the revision information for the parent element. The revision 
						element may appear zero or one time.
						*/
	let revision: String?


	/**
						The subject element contains a description of the topical subject of the parent element. The 
						subject element may appear zero or one time.
						*/
	let subject: String?


	/**
						The title element contains the title information for the parent element. The title element may 
						appear zero or one time.
						*/
	let title: String?

	/**
*/
final class Unit : ColladaType {
	/**
								The meter attribute specifies the measurement with respect to the meter. The default 
								value for the meter attribute is "1.0".
								*/
	let meter: FloatType?

	/**
								The name attribute specifies the name of the unit. The default value for the name 
								attribute is "meter".
								*/
	let name: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "meter") {
			self.meter = FloatType(attribute.stringValue!)!
		} else { self.meter = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
	}

}
	/**
						The unit element contains descriptive information about unit of measure. It has attributes for 
						the name of the unit and the measurement with respect to the meter. The unit element may appear 
						zero or one time.
						*/
	let unit: Unit?


	/**
						The up_axis element contains descriptive information about coordinate system of the geometric 
						data. All coordinates are right-handed by definition. This element specifies which axis is 
						considered up. The default is the Y-axis. The up_axis element may appear zero or one time.
						*/
	let upAxis: UpAxisEnum?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.contributor = xmlElement.elements(forName: "contributor").map { Contributor(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "coverage").first {
			self.coverage = Coverage(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.coverage = nil }
		if let childElement = xmlElement.elements(forName: "keywords").first {
			self.keywords = String(childElement.stringValue!)
		} else { self.keywords = nil }
		if let childElement = xmlElement.elements(forName: "revision").first {
			self.revision = String(childElement.stringValue!)
		} else { self.revision = nil }
		if let childElement = xmlElement.elements(forName: "subject").first {
			self.subject = String(childElement.stringValue!)
		} else { self.subject = nil }
		if let childElement = xmlElement.elements(forName: "title").first {
			self.title = String(childElement.stringValue!)
		} else { self.title = nil }
		if let childElement = xmlElement.elements(forName: "unit").first {
			self.unit = Unit(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.unit = nil }
		if let childElement = xmlElement.elements(forName: "up_axis").first {
			self.upAxis = UpAxisEnum(childElement.stringValue!)
		} else { self.upAxis = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class ImageType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**sub identifier*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The image element may contain an asset element.
						*/
	let asset: AssetType?

	/**
*/
final class Renderable : ColladaType {
	/**As a render target, true = shared across all users, false = unique per instance*/
	let share: Bool




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.share = Bool(xmlElement.attribute(forName: "share")!.stringValue!)!
	}

}
	/**This image is renderable  if this element is used*/
	let renderable: Renderable?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]
/**
*/
final class InitFrom : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class Create2d : ColladaType {

	/**
*/
final class Array : ColladaType {
	/***/
	let length: UInt32




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.length = UInt32(xmlElement.attribute(forName: "length")!.stringValue!)!
	}

}
	/***/
	let array: Array?

	/**
*/
final class Format : ColladaType {

	/**
*/
final class Hint : ColladaType {
	/**The per-texel layout of the format.  The length of the string indicate how many channels there are and the letter respresents the name of the channel.  There are typically 0 to 4 channels.*/
	let channels: ImageFormatHintChannelsEnum

	/**Each channel represents a range of values. Some example ranges are signed or unsigned integers, or between between a clamped range such as 0.0f to 1.0f, or high dynamic range via floating point*/
	let range: ImageFormatHintRangeEnum

	/**Each channel of the texel has a precision.  Typically these are all linked together.  An exact format lay lower the precision of an individual channel but applying a higher precision by linking the channels together may still convey the same information.*/
	let precision: ImageFormatHintPrecisionEnum?

	/**linear(default), sRGB */
	let space: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.channels = ImageFormatHintChannelsEnum(xmlElement.attribute(forName: "channels")!.stringValue!)
		self.range = ImageFormatHintRangeEnum(xmlElement.attribute(forName: "range")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "precision") {
			self.precision = ImageFormatHintPrecisionEnum(attribute.stringValue!)
		} else { self.precision = nil }
		if let attribute = xmlElement.attribute(forName: "space") {
			self.space = String(attribute.stringValue!)
		} else { self.space = nil }
	}

}
	/**if this element or a higher precidence element is not present then use a common format R8G8B8A8 with linear color gradient, not  sRGB.*/
	let hint: Hint


	/**Contains a string representing the profile and platform specific texel format that the author would like this surface to use.  If this element is not specified then the application will fall back to the hint*/
	let exact: String?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.hint = Hint(xmlElement: xmlElement.elements(forName: "hint").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "exact").first {
			self.exact = String(childElement.stringValue!)
		} else { self.exact = nil }
	}

}
	/**If not present it is assumed to be R8G8B8A8 linear. */
	let format: Format?

	/**
*/
final class InitFrom : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**init the image data from one or more partial pieces of data.  The load attribute indicates what portion of the image will be loaded based on the ''address" specified.  mip_generate may be used to complete the image.*/
	let initFrom: [InitFrom]
/**
*/
final class SizeExact : ColladaType {
	/***/
	let width: UInt32

	/***/
	let height: UInt32




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.width = UInt32(xmlElement.attribute(forName: "width")!.stringValue!)!
		self.height = UInt32(xmlElement.attribute(forName: "height")!.stringValue!)!
	}

}
/**
*/
final class SizeRatio : ColladaType {
	/***/
	let width: Float

	/***/
	let height: Float




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.width = Float(xmlElement.attribute(forName: "width")!.stringValue!)!
		self.height = Float(xmlElement.attribute(forName: "height")!.stringValue!)!
	}

}
	enum Create2dChoice0 {
		/**The surface should be sized to these exact dimensions*/
		case sizeExact(SizeExact)
		/**Image size should be relative to the size of the viewport.  Ex 1,1 is the same size as the viewport.  0.5,0.5 is 1/2 the size of the viewport*/
		case sizeRatio(SizeRatio)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "size_exact" {	self = .sizeExact(SizeExact(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "size_exact").first {
	self = .sizeExact(SizeExact(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "size_ratio" {	self = .sizeRatio(SizeRatio(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "size_ratio").first {
	self = .sizeRatio(SizeRatio(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/**sizing*/
	let choice0: Create2dChoice0


	enum Create2dChoice1 {
		/***/
		case mips(ImageMipsType)
		/**Unnormalized addressing of texels.  (0-W, 0-H).  This cannot be used with mips since the addressing is not uniform per level.  This is equivilant to OpenGL textureRECT extension.*/
		case unnormalized
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "mips" {	self = .mips(ImageMipsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "mips").first {
	self = .mips(ImageMipsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "unnormalized" {	self = .unnormalized
	return
}
if let _ = xmlElement.elements(forName: "unnormalized").first {
	self = .unnormalized
	return
}
return nil
}
	}

	/**mips and texel addressing*/
	let choice1: Create2dChoice1


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "array").first {
			self.array = Array(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.array = nil }
		if let childElement = xmlElement.elements(forName: "format").first {
			self.format = Format(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.format = nil }
		self.initFrom = xmlElement.elements(forName: "init_from").map { InitFrom(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = Create2dChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		self.choice1 = Create2dChoice1(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
	}

}
/**
*/
final class Create3d : ColladaType {

	/**
*/
final class Size : ColladaType {
	/***/
	let width: UInt32

	/***/
	let height: UInt32

	/***/
	let depth: UInt32




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.width = UInt32(xmlElement.attribute(forName: "width")!.stringValue!)!
		self.height = UInt32(xmlElement.attribute(forName: "height")!.stringValue!)!
		self.depth = UInt32(xmlElement.attribute(forName: "depth")!.stringValue!)!
	}

}
	/**The surface should be sized to these exact dimensions*/
	let size: Size


	/***/
	let mips: ImageMipsType

	/**
*/
final class Array : ColladaType {
	/**Zero is not an array*/
	let length: UInt32




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.length = UInt32(xmlElement.attribute(forName: "length")!.stringValue!)!
	}

}
	/***/
	let array: Array?

	/**
*/
final class Format : ColladaType {

	/**
*/
final class Hint : ColladaType {
	/**The per-texel layout of the format.  The length of the string indicate how many channels there are and the letter respresents the name of the channel.  There are typically 0 to 4 channels.*/
	let channels: ImageFormatHintChannelsEnum

	/**Each channel represents a range of values. Some example ranges are signed or unsigned integers, or between between a clamped range such as 0.0f to 1.0f, or high dynamic range via floating point*/
	let range: ImageFormatHintRangeEnum

	/**Each channel of the texel has a precision.  Typically these are all linked together.  An exact format lay lower the precision of an individual channel but applying a higher precision by linking the channels together may still convey the same information.*/
	let precision: ImageFormatHintPrecisionEnum?

	/**linear(default), sRGB */
	let space: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.channels = ImageFormatHintChannelsEnum(xmlElement.attribute(forName: "channels")!.stringValue!)
		self.range = ImageFormatHintRangeEnum(xmlElement.attribute(forName: "range")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "precision") {
			self.precision = ImageFormatHintPrecisionEnum(attribute.stringValue!)
		} else { self.precision = nil }
		if let attribute = xmlElement.attribute(forName: "space") {
			self.space = String(attribute.stringValue!)
		} else { self.space = nil }
	}

}
	/**if this element or a higher precidence element is not present then use a common format R8G8B8A8 with linear color gradient, not  sRGB.*/
	let hint: Hint


	/**Contains a string representing the profile and platform specific texel format that the author would like this surface to use.  If this element is not specified then the application will fall back to the hint*/
	let exact: String?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.hint = Hint(xmlElement: xmlElement.elements(forName: "hint").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "exact").first {
			self.exact = String(childElement.stringValue!)
		} else { self.exact = nil }
	}

}
	/**If not present it is assumed to be R8G8B8A8 linear. */
	let format: Format?

	/**
*/
final class InitFrom : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**init the image data from one or more partial pieces of data.  The load attribute indicates what portion of the image will be loaded based on the ''address" specified.  mip_generate may be used to complete the image.*/
	let initFrom: [InitFrom]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.size = Size(xmlElement: xmlElement.elements(forName: "size").first!, sourcesToObjects: &sourcesToObjects)
		self.mips = ImageMipsType(xmlElement: xmlElement.elements(forName: "mips").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "array").first {
			self.array = Array(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.array = nil }
		if let childElement = xmlElement.elements(forName: "format").first {
			self.format = Format(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.format = nil }
		self.initFrom = xmlElement.elements(forName: "init_from").map { InitFrom(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class CreateCube : ColladaType {

	/**
*/
final class Size : ColladaType {
	/***/
	let width: UInt32




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.width = UInt32(xmlElement.attribute(forName: "width")!.stringValue!)!
	}

}
	/**The surface should be sized to these exact dimensions*/
	let size: Size


	/***/
	let mips: ImageMipsType

	/**
*/
final class Array : ColladaType {
	/**Zero is not an array*/
	let length: UInt32




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.length = UInt32(xmlElement.attribute(forName: "length")!.stringValue!)!
	}

}
	/***/
	let array: Array?

	/**
*/
final class Format : ColladaType {

	/**
*/
final class Hint : ColladaType {
	/**The per-texel layout of the format.  The length of the string indicate how many channels there are and the letter respresents the name of the channel.  There are typically 0 to 4 channels.*/
	let channels: ImageFormatHintChannelsEnum

	/**Each channel represents a range of values. Some example ranges are signed or unsigned integers, or between between a clamped range such as 0.0f to 1.0f, or high dynamic range via floating point*/
	let range: ImageFormatHintRangeEnum

	/**Each channel of the texel has a precision.  Typically these are all linked together.  An exact format lay lower the precision of an individual channel but applying a higher precision by linking the channels together may still convey the same information.*/
	let precision: ImageFormatHintPrecisionEnum?

	/**linear(default), sRGB */
	let space: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.channels = ImageFormatHintChannelsEnum(xmlElement.attribute(forName: "channels")!.stringValue!)
		self.range = ImageFormatHintRangeEnum(xmlElement.attribute(forName: "range")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "precision") {
			self.precision = ImageFormatHintPrecisionEnum(attribute.stringValue!)
		} else { self.precision = nil }
		if let attribute = xmlElement.attribute(forName: "space") {
			self.space = String(attribute.stringValue!)
		} else { self.space = nil }
	}

}
	/**if this element or a higher precidence element is not present then use a common format R8G8B8A8 with linear color gradient, not  sRGB.*/
	let hint: Hint


	/**Contains a string representing the profile and platform specific texel format that the author would like this surface to use.  If this element is not specified then the application will fall back to the hint*/
	let exact: String?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.hint = Hint(xmlElement: xmlElement.elements(forName: "hint").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "exact").first {
			self.exact = String(childElement.stringValue!)
		} else { self.exact = nil }
	}

}
	/**If not present it is assumed to be R8G8B8A8 linear. */
	let format: Format?

	/**
*/
final class InitFrom : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**init the image data from one or more partial pieces of data.  The load attribute indicates what portion of the image will be loaded based on the ''address" specified.  mip_generate may be used to complete the image.*/
	let initFrom: [InitFrom]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.size = Size(xmlElement: xmlElement.elements(forName: "size").first!, sourcesToObjects: &sourcesToObjects)
		self.mips = ImageMipsType(xmlElement: xmlElement.elements(forName: "mips").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "array").first {
			self.array = Array(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.array = nil }
		if let childElement = xmlElement.elements(forName: "format").first {
			self.format = Format(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.format = nil }
		self.initFrom = xmlElement.elements(forName: "init_from").map { InitFrom(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	enum ImageTypeChoice0 {
		/**initialize the whole image structure and data from formats like DDS*/
		case initFrom(InitFrom)
		/**Initialize a custom 2d image*/
		case create2d(Create2d)
		/**Initialize a custom 3d image*/
		case create3d(Create3d)
		/**Initialize a custom cube image*/
		case createCube(CreateCube)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "init_from" {	self = .initFrom(InitFrom(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "init_from").first {
	self = .initFrom(InitFrom(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "create_2d" {	self = .create2d(Create2d(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "create_2d").first {
	self = .create2d(Create2d(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "create_3d" {	self = .create3d(Create3d(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "create_3d").first {
	self = .create3d(Create3d(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "create_cube" {	self = .createCube(CreateCube(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "create_cube").first {
	self = .createCube(CreateCube(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: ImageTypeChoice0?


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		if let childElement = xmlElement.elements(forName: "renderable").first {
			self.renderable = Renderable(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.renderable = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = ImageTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The camera element declares a view into the scene hierarchy or scene graph. The camera contains 
			elements that describe the camera's optics and imager.
			*/
final class CameraType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The camera element may contain an asset element.
						*/
	let asset: AssetType?

	/**
*/
final class Optics : ColladaType {

	/**
*/
final class TechniqueCommon : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**
									The technique_common element specifies the optics information for the common profile 
									which all COLLADA implementations need to support.
									*/
	let techniqueCommon: TechniqueCommon


	/**
									This element may contain any number of non-common profile techniques.
									*/
	let technique: [TechniqueType]


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
						Optics represents the apparatus on a camera that projects the image onto the image sensor.
						*/
	let optics: Optics

	/**
*/
final class Imager : ColladaType {


	/**
									This element may contain any number of non-common profile techniques.
									There is no common technique for imager.
									*/
	let technique: [TechniqueType]


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
						Imagers represent the image sensor of a camera (for example film or CCD).
						*/
	let imager: Imager?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.optics = Optics(xmlElement: xmlElement.elements(forName: "optics").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "imager").first {
			self.imager = Imager(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.imager = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The light element declares a light source that illuminates the scene.
			Light sources have many different properties and radiate light in many different patterns and 
			frequencies.
			*/
final class LightType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The light element may contain an asset element.
						*/
	let asset: AssetType?

	/**
*/
final class TechniqueCommon : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**
						The technique_common element specifies the light information for the common profile which all 
						COLLADA implementations need to support.
						*/
	let techniqueCommon: TechniqueCommon


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The instance_with_extra_type element is used for all generic instance elements. A generic instance element 
			is one which does not have any specific child elements declared.
			*/
final class InstanceWithExtraType : ColladaType {
	/**
				The url attribute refers to resource to instantiate. This may refer to a local resource using a 
				relative URL fragment identifier that begins with the "#" character. The url attribute may refer 
				to an external resource using an absolute or relative URL.
				*/
	let url: String

	/**
				The sid attribute is a text string value containing the sub-identifier of this element. This 
				value must be unique within the scope of the parent element. Optional attribute.
				*/
	let sid: SidType?

	/**
				The name attribute is the text string name of this element. Optional attribute.
				*/
	let name: String?

	/**
						The extra element may occur any number of times.
					*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class InstanceImageType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			The instance_camera element declares the instantiation of a COLLADA camera resource.
			*/
final class InstanceCameraType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			The instance_force_field element declares the instantiation of a COLLADA force_field resource.
			*/
final class InstanceForceFieldType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			The instance_light element declares the instantiation of a COLLADA light resource.
			*/
final class InstanceLightType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			The instance_material element declares the instantiation of a COLLADA material resource.
			*/
final class InstanceMaterialType : ColladaType {
	/**
					The symbol attribute specifies which symbol defined from within the geometry this material binds to.
					*/
	let symbol: String

	/**
					The target attribute specifies the URL of the location of the object to instantiate.
					*/
	let target: String

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?
	/**
*/
final class Bind : ColladaType {
	/**
								The semantic attribute specifies which effect parameter to bind.
								*/
	let semantic: String

	/**
								The target attribute specifies the location of the value to bind to the specified semantic. 
								This text string is a path-name following a simple syntax described in the "Addressing Syntax" 
								section.
								*/
	let target: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
	}

}
	/**
						The bind element binds values to effect parameters upon instantiation.
						*/
	let bind: [Bind]

	/**
*/
final class BindVertexInput : ColladaType {
	/**
								The semantic attribute specifies which effect parameter to bind.
								*/
	let semantic: String

	/**
								The input_semantic attribute specifies which input semantic to bind.
								*/
	let inputSemantic: String

	/**
								The input_set attribute specifies which input set to bind. 
								*/
	let inputSet: UintType?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.inputSemantic = String(xmlElement.attribute(forName: "input_semantic")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "input_set") {
			self.inputSet = UintType(attribute.stringValue!)!
		} else { self.inputSet = nil }
	}

}
	/**
						The bind_vertex_input element binds vertex inputs to effect parameters upon instantiation.
						*/
	let bindVertexInput: [BindVertexInput]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { Bind(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindVertexInput = xmlElement.elements(forName: "bind_vertex_input").map { BindVertexInput(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			Bind a specific material to a piece of geometry, binding varying and uniform parameters at the 
			same time.
			*/
final class BindMaterialType : ColladaType {


	/**
						The bind_material element may contain any number of param elements.
						*/
	let param: [ParamType]

	/**
*/
final class TechniqueCommon : ColladaType {


	/**
									The instance_material element specifies the information needed to bind a geometry
									to a material. This element must appear at least once.
									*/
	let instanceMaterial: [InstanceMaterialType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.instanceMaterial = xmlElement.elements(forName: "instance_material").map { InstanceMaterialType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
						The technique_common element specifies the bind_material information for the common 
						profile which all COLLADA implementations need to support.
						*/
	let techniqueCommon: TechniqueCommon


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.param = xmlElement.elements(forName: "param").map { ParamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The instance_controller element declares the instantiation of a COLLADA controller resource.
			*/
final class InstanceControllerType : ColladaType {
	/**
					The url attribute refers to resource. This may refer to a local resource using a relative 
					URL fragment identifier that begins with the "#" character. The url attribute may refer to an 
					external resource using an absolute or relative URL.
					*/
	let url: String

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The skeleton element is used to indicate where a skin controller is to start to search for 
						the joint nodes it needs.  This element is meaningless for morph controllers.
						*/
	let skeleton: [String]


	/**
						Bind a specific material to a piece of geometry, binding varying and uniform parameters at the 
						same time.
						*/
	let bindMaterial: BindMaterialType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.skeleton = xmlElement.elements(forName: "skeleton").map { String($0) }
		if let childElement = xmlElement.elements(forName: "bind_material").first {
			self.bindMaterial = BindMaterialType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.bindMaterial = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The instance_geometry element declares the instantiation of a COLLADA geometry resource.
			*/
final class InstanceGeometryType : ColladaType {
	/**
					The url attribute refers to resource.  This may refer to a local resource using a relative URL 
					fragment identifier that begins with the "#" character. The url attribute may refer to an external 
					resource using an absolute or relative URL.
					*/
	let url: String

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						Bind a specific material to a piece of geometry, binding varying and uniform parameters at the 
						same time.
						*/
	let bindMaterial: BindMaterialType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "bind_material").first {
			self.bindMaterial = BindMaterialType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.bindMaterial = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The instance_node element declares the instantiation of a COLLADA node resource.
			*/
final class InstanceNodeType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			The instance_physics_material element declares the instantiation of a COLLADA physics_material 
			resource.
			*/
final class InstancePhysicsMaterialType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			This element allows instancing a rigid_constraint within an instance_physics_model. 
			*/
final class InstanceRigidConstraintType : ColladaType {
	/**
					The constraint attribute indicates which rigid_constraing to instantiate. Required attribute.
					*/
	let constraint: String

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.constraint = String(xmlElement.attribute(forName: "constraint")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The library_cameras element declares a module of camera elements.
			*/
final class LibraryCamerasType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_cameras element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one camera element.
						*/
	let camera: [CameraType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.camera = xmlElement.elements(forName: "camera").map { CameraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_images element declares a module of image elements.
			*/
final class LibraryImagesType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_images element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one image element.
						*/
	let image: [ImageType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.image = xmlElement.elements(forName: "image").map { ImageType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_lights element declares a module of light elements.
			*/
final class LibraryLightsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_lights element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one light element.
						*/
	let light: [LightType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.light = xmlElement.elements(forName: "light").map { LightType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The instance_effect element declares the instantiation of a COLLADA effect resource.
			*/
final class InstanceEffectType : ColladaType {
	/**
					The url attribute refers to resource.  This may refer to a local resource using a relative URL 
					fragment identifier that begins with the "#" character. The url attribute may refer to an external 
					resource using an absolute or relative URL.
					*/
	let url: String

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?
	/**
*/
final class TechniqueHint : ColladaType {
	/**
								A platform defines a string that specifies which platform this is hint is aimed for.
								*/
	let platform: String?

	/**
								A profile defines a string that specifies which API profile this is hint is aimed for.
								*/
	let profile: String?

	/**
								A reference to the technique to use for the specified platform.
								*/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		if let attribute = xmlElement.attribute(forName: "profile") {
			self.profile = String(attribute.stringValue!)
		} else { self.profile = nil }
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
	/**
						Add a hint for a platform of which technique to use in this effect.
						*/
	let techniqueHint: [TechniqueHint]

	/**
*/
final class Setparam : ColladaType {
	/***/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
	/**
						Assigns a new value to a previously defined parameter
						*/
	let setparam: [Setparam]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.techniqueHint = xmlElement.elements(forName: "technique_hint").map { TechniqueHint(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.setparam = xmlElement.elements(forName: "setparam").map { Setparam(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			Materials describe the visual appearance of a geometric object.
			*/
final class MaterialType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The material element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The material must instance an effect.
						*/
	let instanceEffect: InstanceEffectType


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.instanceEffect = InstanceEffectType(xmlElement: xmlElement.elements(forName: "instance_effect").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_materials element declares a module of material elements.
			*/
final class LibraryMaterialsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_materials element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one material element.
						*/
	let material: [MaterialType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.material = xmlElement.elements(forName: "material").map { MaterialType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**Sampling state that can be sharable between samplers because there is often heavy re-use*/
final class FxSamplerType : ColladaType {


	/***/
	let instanceImage: InstanceImageType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "instance_image").first {
			self.instanceImage = InstanceImageType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.instanceImage = nil }
	}

}
/**
			A one-dimensional texture sampler.
			*/
final class FxSampler1DType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			A two-dimensional texture sampler.
			*/
final class FxSampler2DType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			A three-dimensional texture sampler.
			*/
final class FxSampler3DType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			A texture sampler for cube maps.
			*/
final class FxSamplerCUBEType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			A two-dimensional texture sampler.
			*/
final class FxSamplerRECTType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
			A texture sampler for depth maps.
			*/
final class FxSamplerDEPTHType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FxRendertargetType : ColladaType {
	/**array index*/
	let index: UInt32?

	/**mip level*/
	let mip: UInt32?

	/**cube face*/
	let face: ImageFaceEnum?

	/**volume depth*/
	let slice: UInt32?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "index") {
			self.index = UInt32(attribute.stringValue!)!
		} else { self.index = nil }
		if let attribute = xmlElement.attribute(forName: "mip") {
			self.mip = UInt32(attribute.stringValue!)!
		} else { self.mip = nil }
		if let attribute = xmlElement.attribute(forName: "face") {
			self.face = ImageFaceEnum(attribute.stringValue!)
		} else { self.face = nil }
		if let attribute = xmlElement.attribute(forName: "slice") {
			self.slice = UInt32(attribute.stringValue!)!
		} else { self.slice = nil }
	}

}
/**
*/
final class FxColortargetType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FxDepthtargetType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FxStenciltargetType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FxClearcolorType : ColladaType {



	let data: FxColorType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = FxColorType(xmlElement.stringValue!)!
	}

}
/**
*/
final class FxCleardepthType : ColladaType {



	let data: FloatType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
*/
final class FxClearstencilType : ColladaType {



	let data: [UInt8]

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = [UInt8](xmlElement.stringValue!)!
	}

}
/**
*/
final class FxAnnotateType : ColladaType {
	/***/
	let name: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.name = String(xmlElement.attribute(forName: "name")!.stringValue!)
	}

}
/**
			This element creates a new, named param object in the FX Runtime, assigns it a type, an initial value, and additional attributes at declaration time.
			*/
final class FxNewparamType : ColladaType {
	/**
				The sid attribute is a text string value containing the sub-identifier of this element. 
				This value must be unique within the scope of the parent element. Optional attribute.
				*/
	let sid: SidType

	/**
					The annotate element allows you to specify an annotation for this new param.
					*/
	let annotate: [FxAnnotateType]


	/**
					The semantic element allows you to specify a semantic for this new param.
					*/
	let semantic: String?


	/**
					The modifier element allows you to specify a modifier for this new param.
					*/
	let modifier: FxModifierEnum?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		if let childElement = xmlElement.elements(forName: "modifier").first {
			self.modifier = FxModifierEnum(childElement.stringValue!)
		} else { self.modifier = nil }
	}

}
/**
			The include element is used to import source code or precompiled binary shaders into the FX Runtime by referencing an external resource.
			*/
final class FxIncludeType : ColladaType {
	/**
					The sid attribute is a text string value containing the sub-identifier of this element. 
					This value must be unique within the scope of the parent element. Optional attribute.
				*/
	let sid: SidType

	/**
					The url attribute refers to resource.  This may refer to a local resource using a relative URL 
					fragment identifier that begins with the "#" character. The url attribute may refer to an external 
					resource using an absolute or relative URL.
				*/
	let url: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
	}

}
/**
			The fx_code_common type allows you to specify an inline block of source code.
			*/
final class FxCodeType : ColladaType {



	let data: String

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
*/
final class FxSourcesType : ColladaType {


/**
*/
final class Import : ColladaType {
	/***/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
	enum FxSourcesTypeChoice0 {
		/**this is allows you to include some code right here....like a #define for an uber shader that is imported*/
		case inline(String)
		/**Ref attribute identifies the sid of a code or include element*/
		case importing(Import)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "inline" {	self = .inline(xmlElement.stringValue!)
	return
}
if xmlElement.name == "import" {	self = .importing(Import(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "import").first {
	self = .importing(Import(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [FxSourcesTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { FxSourcesTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**identify the platform_sku and compiler options to build a binary*/
final class FxTargetType : ColladaType {
	/**Name of sub-platform.  May be identical to the platform_series*/
	let platform: String

	/**compiler or linker results symbol.  Ex arbvp1, arbfp1, glslv, glslf, hlslv, hlslf, vs_3_0, ps_3_0*/
	let target: String?

	/**compiler or linker options*/
	let options: String?
	/**
*/
final class Binary : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/***/
	let binary: Binary?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.platform = String(xmlElement.attribute(forName: "platform")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "target") {
			self.target = String(attribute.stringValue!)
		} else { self.target = nil }
		if let attribute = xmlElement.attribute(forName: "options") {
			self.options = String(attribute.stringValue!)
		} else { self.options = nil }
		if let childElement = xmlElement.elements(forName: "binary").first {
			self.binary = Binary(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.binary = nil }
	}

}
/**
*/
final class FxCommonFloatOrParamType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FxCommonColorOrTextureType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FxCommonTransparentType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FxCommonNewparamType : ColladaType {
	/**
				The sid attribute is a text string value containing the sub-identifier of this element. 
				This value must be unique within the scope of the parent element. Optional attribute.
				*/
	let sid: SidType

	/***/
	let semantic: String?

	enum FxCommonNewparamTypeChoice0 {
		/***/
		case float(FloatType)
		/***/
		case float2(Float2Type)
		/***/
		case float3(Float3Type)
		/***/
		case float4(Float4Type)
		/***/
		case sampler2D(FxSampler2DType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "float" {	self = .float(FloatType(xmlElement.stringValue!)!)
	return
}
if xmlElement.name == "float2" {	self = .float2(Float2Type(xmlElement.stringValue!)!)
	return
}
if xmlElement.name == "float3" {	self = .float3(Float3Type(xmlElement.stringValue!)!)
	return
}
if xmlElement.name == "float4" {	self = .float4(Float4Type(xmlElement.stringValue!)!)
	return
}
if xmlElement.name == "sampler2D" {	self = .sampler2D(FxSampler2DType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "sampler2D").first {
	self = .sampler2D(FxSampler2DType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: FxCommonNewparamTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		self.choice0 = FxCommonNewparamTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
	}

}
/**
			Opens a block of COMMON platform-specific data types and technique declarations.
			*/
final class ProfileCommonType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/***/
	let asset: AssetType?


	/***/
	let newparam: [FxCommonNewparamType]

	/**
*/
final class Technique : ColladaType {
	/**
								The id attribute is a text string containing the unique identifier of this element. 
								This value must be unique within the instance document. Optional attribute.
								*/
	let id: String?

	/**
								The sid attribute is a text string value containing the sub-identifier of this element. 
								This value must be unique within the scope of the parent element. Optional attribute.
								*/
	let sid: SidType

	/**
									The technique element may contain an asset element.
									*/
	let asset: AssetType?


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]
/**
*/
final class Constant : ColladaType {


	/***/
	let emission: FxCommonColorOrTextureType?


	/***/
	let reflective: FxCommonColorOrTextureType?


	/***/
	let reflectivity: FxCommonFloatOrParamType?


	/***/
	let transparent: FxCommonTransparentType?


	/***/
	let transparency: FxCommonFloatOrParamType?


	/***/
	let indexOfRefraction: FxCommonFloatOrParamType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "emission").first {
			self.emission = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.emission = nil }
		if let childElement = xmlElement.elements(forName: "reflective").first {
			self.reflective = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflective = nil }
		if let childElement = xmlElement.elements(forName: "reflectivity").first {
			self.reflectivity = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflectivity = nil }
		if let childElement = xmlElement.elements(forName: "transparent").first {
			self.transparent = FxCommonTransparentType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparent = nil }
		if let childElement = xmlElement.elements(forName: "transparency").first {
			self.transparency = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparency = nil }
		if let childElement = xmlElement.elements(forName: "index_of_refraction").first {
			self.indexOfRefraction = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.indexOfRefraction = nil }
	}

}
/**
*/
final class Lambert : ColladaType {


	/***/
	let emission: FxCommonColorOrTextureType?


	/***/
	let ambient: FxCommonColorOrTextureType?


	/***/
	let diffuse: FxCommonColorOrTextureType?


	/***/
	let reflective: FxCommonColorOrTextureType?


	/***/
	let reflectivity: FxCommonFloatOrParamType?


	/***/
	let transparent: FxCommonTransparentType?


	/***/
	let transparency: FxCommonFloatOrParamType?


	/***/
	let indexOfRefraction: FxCommonFloatOrParamType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "emission").first {
			self.emission = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.emission = nil }
		if let childElement = xmlElement.elements(forName: "ambient").first {
			self.ambient = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.ambient = nil }
		if let childElement = xmlElement.elements(forName: "diffuse").first {
			self.diffuse = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.diffuse = nil }
		if let childElement = xmlElement.elements(forName: "reflective").first {
			self.reflective = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflective = nil }
		if let childElement = xmlElement.elements(forName: "reflectivity").first {
			self.reflectivity = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflectivity = nil }
		if let childElement = xmlElement.elements(forName: "transparent").first {
			self.transparent = FxCommonTransparentType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparent = nil }
		if let childElement = xmlElement.elements(forName: "transparency").first {
			self.transparency = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparency = nil }
		if let childElement = xmlElement.elements(forName: "index_of_refraction").first {
			self.indexOfRefraction = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.indexOfRefraction = nil }
	}

}
/**
*/
final class Phong : ColladaType {


	/***/
	let emission: FxCommonColorOrTextureType?


	/***/
	let ambient: FxCommonColorOrTextureType?


	/***/
	let diffuse: FxCommonColorOrTextureType?


	/***/
	let specular: FxCommonColorOrTextureType?


	/***/
	let shininess: FxCommonFloatOrParamType?


	/***/
	let reflective: FxCommonColorOrTextureType?


	/***/
	let reflectivity: FxCommonFloatOrParamType?


	/***/
	let transparent: FxCommonTransparentType?


	/***/
	let transparency: FxCommonFloatOrParamType?


	/***/
	let indexOfRefraction: FxCommonFloatOrParamType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "emission").first {
			self.emission = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.emission = nil }
		if let childElement = xmlElement.elements(forName: "ambient").first {
			self.ambient = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.ambient = nil }
		if let childElement = xmlElement.elements(forName: "diffuse").first {
			self.diffuse = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.diffuse = nil }
		if let childElement = xmlElement.elements(forName: "specular").first {
			self.specular = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.specular = nil }
		if let childElement = xmlElement.elements(forName: "shininess").first {
			self.shininess = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.shininess = nil }
		if let childElement = xmlElement.elements(forName: "reflective").first {
			self.reflective = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflective = nil }
		if let childElement = xmlElement.elements(forName: "reflectivity").first {
			self.reflectivity = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflectivity = nil }
		if let childElement = xmlElement.elements(forName: "transparent").first {
			self.transparent = FxCommonTransparentType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparent = nil }
		if let childElement = xmlElement.elements(forName: "transparency").first {
			self.transparency = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparency = nil }
		if let childElement = xmlElement.elements(forName: "index_of_refraction").first {
			self.indexOfRefraction = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.indexOfRefraction = nil }
	}

}
/**
*/
final class Blinn : ColladaType {


	/***/
	let emission: FxCommonColorOrTextureType?


	/***/
	let ambient: FxCommonColorOrTextureType?


	/***/
	let diffuse: FxCommonColorOrTextureType?


	/***/
	let specular: FxCommonColorOrTextureType?


	/***/
	let shininess: FxCommonFloatOrParamType?


	/***/
	let reflective: FxCommonColorOrTextureType?


	/***/
	let reflectivity: FxCommonFloatOrParamType?


	/***/
	let transparent: FxCommonTransparentType?


	/***/
	let transparency: FxCommonFloatOrParamType?


	/***/
	let indexOfRefraction: FxCommonFloatOrParamType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "emission").first {
			self.emission = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.emission = nil }
		if let childElement = xmlElement.elements(forName: "ambient").first {
			self.ambient = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.ambient = nil }
		if let childElement = xmlElement.elements(forName: "diffuse").first {
			self.diffuse = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.diffuse = nil }
		if let childElement = xmlElement.elements(forName: "specular").first {
			self.specular = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.specular = nil }
		if let childElement = xmlElement.elements(forName: "shininess").first {
			self.shininess = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.shininess = nil }
		if let childElement = xmlElement.elements(forName: "reflective").first {
			self.reflective = FxCommonColorOrTextureType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflective = nil }
		if let childElement = xmlElement.elements(forName: "reflectivity").first {
			self.reflectivity = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.reflectivity = nil }
		if let childElement = xmlElement.elements(forName: "transparent").first {
			self.transparent = FxCommonTransparentType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparent = nil }
		if let childElement = xmlElement.elements(forName: "transparency").first {
			self.transparency = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.transparency = nil }
		if let childElement = xmlElement.elements(forName: "index_of_refraction").first {
			self.indexOfRefraction = FxCommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.indexOfRefraction = nil }
	}

}
	enum TechniqueChoice0 {
		/***/
		case constant(Constant)
		/***/
		case lambert(Lambert)
		/***/
		case phong(Phong)
		/***/
		case blinn(Blinn)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "constant" {	self = .constant(Constant(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "constant").first {
	self = .constant(Constant(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "lambert" {	self = .lambert(Lambert(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "lambert").first {
	self = .lambert(Lambert(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "phong" {	self = .phong(Phong(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "phong").first {
	self = .phong(Phong(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "blinn" {	self = .blinn(Blinn(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "blinn").first {
	self = .blinn(Blinn(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: TechniqueChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = TechniqueChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		if let id = self.id { sourcesToObjects[id] = self	} }

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: Technique


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { FxCommonNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.technique = Technique(xmlElement: xmlElement.elements(forName: "technique").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**Bridge COLLADA FX to an external FX framework such as NVIDIA's CgFX or Microsoft's Direct3D FX*/
final class ProfileBridgeType : ColladaType {
	/***/
	let id: String?

	/**The type of platform. This is a vendor-defined character string that indicates the platform or capability target for the technique. Optional*/
	let platform: String?

	/**The url to the file which we are bridging too*/
	let url: String

	/***/
	let asset: AssetType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**Declare a new parameter in the profile to be bound to the pipeline state or shaders*/
final class Gles2NewparamType : ColladaType {
	/***/
	let sid: SidType

	/***/
	let annotate: [FxAnnotateType]


	/**
					The semantic element allows you to specify a semantic for this new param.
					*/
	let semantic: String?


	/***/
	let modifier: FxModifierEnum?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		if let childElement = xmlElement.elements(forName: "modifier").first {
			self.modifier = FxModifierEnum(childElement.stringValue!)
		} else { self.modifier = nil }
	}

}
/**Identify code fragments and bind their parameters to effect parameters to identify how their values will be filled in*/
final class Gles2ShaderType : ColladaType {
	/**GPU Pipeline stage for this programmable shader. Current standards are VERTEX (vertex shader), FRAGMENT (pixel or fragment shader).  These are recognized by both GLSL and CG*/
	let stage: FxPipelineStageEnum
	/**
*/
final class Sources : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**sid of the code or include element which provides the source for this shader.  Code may come from local or library_code.*/
	let sources: Sources


	/**Not used by GLSL.  This identifies a very specific binary target format for such things as a specific generation of GPU.  Ex. NV4x*/
	let compiler: [FxTargetType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.stage = FxPipelineStageEnum(xmlElement.attribute(forName: "stage")!.stringValue!)
		self.sources = Sources(xmlElement: xmlElement.elements(forName: "sources").first!, sourcesToObjects: &sourcesToObjects)
		self.compiler = xmlElement.elements(forName: "compiler").map { FxTargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**a program is one or more shaders linked together*/
final class Gles2ProgramType : ColladaType {


	/**compile shader stages*/
	let shader: [Gles2ShaderType]


	/**link shaders into program*/
	let linker: [FxTargetType]

	/**
*/
final class BindAttribute : ColladaType {
	/**shader variable name*/
	let symbol: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind attributes.  If not bound then it is assumed to be the same semantic as the variable name.  If the variable name is prefixed with "gl_" or "sv_" then the prefix may be ignored.*/
	let bindAttribute: [BindAttribute]

	/**
*/
final class BindUniform : ColladaType {
	/**shader variable name*/
	let symbol: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind uniforms and samplers*/
	let bindUniform: [BindUniform]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.shader = xmlElement.elements(forName: "shader").map { Gles2ShaderType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.linker = xmlElement.elements(forName: "linker").map { FxTargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindAttribute = xmlElement.elements(forName: "bind_attribute").map { BindAttribute(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindUniform = xmlElement.elements(forName: "bind_uniform").map { BindUniform(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**Set up pipeline state and shaders for rendering*/
final class Gles2PassType : ColladaType {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/**Add metadata to this pass that may be used by games or tools to make decisions*/
	let annotate: [FxAnnotateType]

	/**
*/
final class States : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**API state*/
	let states: States?


	/**A vertex_shader and fragment_shader are linked together to produce a OpenGL ES 2 program.*/
	let program: Gles2ProgramType?

	/**
*/
final class Evaluate : ColladaType {


	/**Identify that this pass is intended to render it's colors into a surface parameter*/
	let colorTarget: [FxColortargetType]


	/**Identify that this pass is intended to render it's depthinto a surface parameter*/
	let depthTarget: [FxDepthtargetType]


	/**Identify that this pass is intended to render it's stencil bits into a surface parameter*/
	let stencilTarget: [FxStenciltargetType]


	/**The indexed color render target is supposed to be cleared to this color*/
	let colorClear: [FxClearcolorType]


	/**The indexed stencil bits render target is supposed to be cleared to this color*/
	let stencilClear: [FxClearstencilType]


	/**The indexed depth render target is supposed to be cleared to this color*/
	let depthClear: [FxCleardepthType]


	/**Identify what type of goemetry should be drawn durring this pass.  See comments in fx_draw_common for a list of common strings.*/
	let draw: FxDrawType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/**runtime execution helpers*/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "program").first {
			self.program = Gles2ProgramType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.program = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**FX for OpenGL ES 2.0*/
final class ProfileGles2Type : ColladaType {
	/**Unique identifier for referencing*/
	let id: String?

	/**Shading language that will be used.  This is not an enum to support future languages.  Current known languages at this time are GLSL-ES, CG*/
	let language: String

	/**Support for multiple OpenGL ES 2.0 platforms*/
	let platforms: ListOfNamesType?

	/***/
	let asset: AssetType?

	/**
*/
final class Newparam : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/***/
	let newparam: [Newparam]

	/**
*/
final class Technique : ColladaType {
	/***/
	let id: String?

	/**
								The sid attribute is a text string value containing the sub-identifier of this element. 
								This value must be unique within the scope of the parent element. Optional attribute.
								*/
	let sid: SidType

	/***/
	let asset: AssetType?


	/**Add metadata to this pass that may be used by games or tools to make decisions*/
	let annotate: [FxAnnotateType]


	/**
									A static declaration of all the render states, shaders, and settings for one rendering pipeline.
									*/
	let pass: [Gles2PassType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.pass = xmlElement.elements(forName: "pass").map { Gles2PassType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]

	enum ProfileGles2TypeChoice0 {
		/**Include shader code from a remote URI.  If binary, assume raw.*/
		case include(FxIncludeType)
		/**The fx_code_profile type allows you to specify an inline block of source code.  It is HIGHLY recommended to use a CDATA block inside to avoid issues with*/
		case code(FxCodeType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "include" {	self = .include(FxIncludeType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "include").first {
	self = .include(FxIncludeType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "code" {	self = .code(FxCodeType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "code").first {
	self = .code(FxCodeType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [ProfileGles2TypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.language = String(xmlElement.attribute(forName: "language")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "platforms") {
			self.platforms = ListOfNamesType(attribute.stringValue!)!
		} else { self.platforms = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { Newparam(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { ProfileGles2TypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The glsl_newarray_type element is used to creates a parameter of a one-dimensional array type.
			*/
final class GlslArrayType : ColladaType {
	/**
				The length attribute specifies the length of the array.
				*/
	let length: UInt32




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.length = UInt32(xmlElement.attribute(forName: "length")!.stringValue!)!
	}

}
/**
*/
final class GlslNewparamType : ColladaType {
	/***/
	let sid: SidType

	/***/
	let annotate: [FxAnnotateType]


	/***/
	let semantic: String?


	/***/
	let modifier: FxModifierEnum?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		if let childElement = xmlElement.elements(forName: "modifier").first {
			self.modifier = FxModifierEnum(childElement.stringValue!)
		} else { self.modifier = nil }
	}

}
/**Identify code fragments and bind their parameters to effect parameters to identify how their values will be filled in*/
final class GlslShaderType : ColladaType {
	/**GPU Pipeline stage for this programmable shader. Current standards are VERTEX (vertex shader), FRAGMENT (pixel or fragment shader).  These are recognized by both GLSL and CG*/
	let stage: FxPipelineStageEnum

	/**sid of the code or include element which provides the source for this shader.  Code may come from local or library_code.*/
	let sources: FxSourcesType


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.stage = FxPipelineStageEnum(xmlElement.attribute(forName: "stage")!.stringValue!)
		self.sources = FxSourcesType(xmlElement: xmlElement.elements(forName: "sources").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**a program is one or more shaders linked together*/
final class GlslProgramType : ColladaType {


	/**compile shader stages*/
	let shader: [GlslShaderType]

	/**
*/
final class BindAttribute : ColladaType {
	/**shader variable name*/
	let symbol: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind attributes.  If not bound then it is assumed to be the same semantic as the variable name.  If the variable name is prefixed with "gl_" or "sv_" then the prefix may be ignored.*/
	let bindAttribute: [BindAttribute]

	/**
*/
final class BindUniform : ColladaType {
	/**shader variable name*/
	let symbol: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind uniforms and samplers*/
	let bindUniform: [BindUniform]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.shader = xmlElement.elements(forName: "shader").map { GlslShaderType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindAttribute = xmlElement.elements(forName: "bind_attribute").map { BindAttribute(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindUniform = xmlElement.elements(forName: "bind_uniform").map { BindUniform(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			Opens a block of GLSL platform-specific data types and technique declarations.
			*/
final class ProfileGlslType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The type of platform. This is a vendor-defined character string that indicates the platform or capability target for the technique. Optional
					*/
	let platform: String?

	/***/
	let asset: AssetType?


	/***/
	let newparam: [GlslNewparamType]

	/**
*/
final class Technique : ColladaType {
	/**
								The id attribute is a text string containing the unique identifier of this element. 
								This value must be unique within the instance document. Optional attribute.
								*/
	let id: String?

	/**
								The sid attribute is a text string value containing the sub-identifier of this element. 
								This value must be unique within the scope of the parent element. Optional attribute.
								*/
	let sid: SidType

	/***/
	let asset: AssetType?


	/***/
	let annotate: [FxAnnotateType]

	/**
*/
final class Pass : ColladaType {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/***/
	let annotate: [FxAnnotateType]

	/**
*/
final class States : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/***/
	let states: States?


	/***/
	let program: GlslProgramType?

	/**
*/
final class Evaluate : ColladaType {


	/***/
	let colorTarget: [FxColortargetType]


	/***/
	let depthTarget: [FxDepthtargetType]


	/***/
	let stencilTarget: [FxStenciltargetType]


	/***/
	let colorClear: [FxClearcolorType]


	/***/
	let depthClear: [FxCleardepthType]


	/***/
	let stencilClear: [FxClearstencilType]


	/***/
	let draw: FxDrawType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/***/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "program").first {
			self.program = GlslProgramType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.program = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
									A static declaration of all the render states, shaders, and settings for one rendering pipeline.
									*/
	let pass: [Pass]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.pass = xmlElement.elements(forName: "pass").map { Pass(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]

	enum ProfileGlslTypeChoice0 {
		/***/
		case code(FxCodeType)
		/***/
		case include(FxIncludeType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "code" {	self = .code(FxCodeType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "code").first {
	self = .code(FxCodeType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "include" {	self = .include(FxIncludeType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "include").first {
	self = .include(FxIncludeType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [ProfileGlslTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { GlslNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { ProfileGlslTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			Creates a parameter of a one-dimensional array type.
			*/
final class CgArrayType : ColladaType {
	/**
				The length attribute specifies the length of the array.
				*/
	let length: UInt32

	/**The array may be resized when changed because it is connected to a Cg unsized array.*/
	let resizable: Bool?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.length = UInt32(xmlElement.attribute(forName: "length")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "resizable") {
			self.resizable = Bool(attribute.stringValue!)!
		} else { self.resizable = nil }
	}

}
/**
			Assigns a new value to a previously defined parameter.
			*/
final class CgSetparamType : ColladaType {
	/***/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
			Creates an instance of a structured class.
			*/
final class CgUserType : ColladaType {
	/***/
	let typename: String

	/**Reference a code or include element which defines the usertype
				*/
	let source: String?

	/**Use a series of these to set the members by name.  The ref attribute will be relative to the usertype you are in right now.*/
	let setparam: [CgSetparamType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.typename = String(xmlElement.attribute(forName: "typename")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "source") {
			self.source = String(attribute.stringValue!)
		} else { self.source = nil }
		self.setparam = xmlElement.elements(forName: "setparam").map { CgSetparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			Create a new, named param object in the CG Runtime, assign it a type, an initial value, and additional attributes at declaration time.
			*/
final class CgNewparamType : ColladaType {
	/***/
	let sid: SidType

	/**
					The annotate element allows you to specify an annotation for this new param.
					*/
	let annotate: [FxAnnotateType]


	/**
					The semantic element allows you to specify a semantic for this new param.
					*/
	let semantic: String?


	/**
					The modifier element allows you to specify a modifier for this new param.
					*/
	let modifier: FxModifierEnum?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		if let childElement = xmlElement.elements(forName: "modifier").first {
			self.modifier = FxModifierEnum(childElement.stringValue!)
		} else { self.modifier = nil }
	}

}
/**
*/
final class CgPassType : ColladaType {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/***/
	let annotate: [FxAnnotateType]

	/**
*/
final class States : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/***/
	let states: States?

	/**
*/
final class Program : ColladaType {

	/**
*/
final class Shader : ColladaType {
	/**
															In which pipeline stage this programmable shader is designed to execute, for example, VERTEX, FRAGMENT, etc.
															*/
	let stage: FxPipelineStageEnum
	/**
*/
final class Sources : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**collect the sources together for the shader.  Use concat to make the final string.																*/
	let sources: Sources


	/***/
	let compiler: [FxTargetType]

	/**
*/
final class BindUniform : ColladaType {
	/**
																		The identifier for a uniform input parameter to the shader (a formal function parameter or in-scope 
																		global) that will be bound to an external resource.
																		*/
	let symbol: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**
																Binds values to uniform inputs of a shader.
																*/
	let bindUniform: [BindUniform]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.stage = FxPipelineStageEnum(xmlElement.attribute(forName: "stage")!.stringValue!)
		self.sources = Sources(xmlElement: xmlElement.elements(forName: "sources").first!, sourcesToObjects: &sourcesToObjects)
		self.compiler = xmlElement.elements(forName: "compiler").map { FxTargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindUniform = xmlElement.elements(forName: "bind_uniform").map { BindUniform(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
													Declare and prepare a shader for execution in the rendering pipeline of a pass.
													*/
	let shader: [Shader]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.shader = xmlElement.elements(forName: "shader").map { Shader(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/***/
	let program: Program?

	/**
*/
final class Evaluate : ColladaType {


	/***/
	let colorTarget: [FxColortargetType]


	/***/
	let depthTarget: [FxDepthtargetType]


	/***/
	let stencilTarget: [FxStenciltargetType]


	/***/
	let colorClear: [FxClearcolorType]


	/***/
	let depthClear: [FxCleardepthType]


	/***/
	let stencilClear: [FxClearstencilType]


	/***/
	let draw: FxDrawType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/***/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "program").first {
			self.program = Program(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.program = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			Opens a block of CG platform-specific data types and technique declarations.
			*/
final class ProfileCgType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The type of platform. This is a vendor-defined character string that indicates the platform or capability target for the technique. Optional
					*/
	let platform: String?

	/***/
	let asset: AssetType?


	/***/
	let newparam: [CgNewparamType]

	/**
*/
final class Technique : ColladaType {
	/**
								The id attribute is a text string containing the unique identifier of this element. 
								This value must be unique within the instance document. Optional attribute.
								*/
	let id: String?

	/**
								The sid attribute is a text string value containing the sub-identifier of this element. 
								This value must be unique within the scope of the parent element. Optional attribute.
								*/
	let sid: SidType

	/**
									The technique element may contain an asset element.
									*/
	let asset: AssetType?


	/***/
	let annotate: [FxAnnotateType]


	/**
									A static declaration of all the render states, shaders, and settings for one rendering pipeline.
									*/
	let pass: [CgPassType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.pass = xmlElement.elements(forName: "pass").map { CgPassType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]

	enum ProfileCgTypeChoice0 {
		/***/
		case code(FxCodeType)
		/***/
		case include(FxIncludeType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "code" {	self = .code(FxCodeType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "code").first {
	self = .code(FxCodeType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "include" {	self = .include(FxIncludeType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "include").first {
	self = .include(FxIncludeType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [ProfileCgTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { CgNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { ProfileCgTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class GlesTextureConstantType : ColladaType {
	/***/
	let value: Float4Type?

	/***/
	let param: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "value") {
			self.value = Float4Type(attribute.stringValue!)!
		} else { self.value = nil }
		if let attribute = xmlElement.attribute(forName: "param") {
			self.param = String(attribute.stringValue!)
		} else { self.param = nil }
	}

}
/**
*/
final class GlesTexenvCommandType : ColladaType {
	/***/
	let theOperator: GlesTexenvModeEnum?

	/***/
	let sampler: String?

	/***/
	let constant: GlesTextureConstantType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "operator") {
			self.theOperator = GlesTexenvModeEnum(attribute.stringValue!)
		} else { self.theOperator = nil }
		if let attribute = xmlElement.attribute(forName: "sampler") {
			self.sampler = String(attribute.stringValue!)
		} else { self.sampler = nil }
		if let childElement = xmlElement.elements(forName: "constant").first {
			self.constant = GlesTextureConstantType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.constant = nil }
	}

}
/**
*/
final class GlesTexcombinerArgumentRgbType : ColladaType {
	/***/
	let source: GlesTexcombinerSourceEnum?

	/***/
	let operand: GlesTexcombinerOperandRgbEnum?

	/***/
	let sampler: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "source") {
			self.source = GlesTexcombinerSourceEnum(attribute.stringValue!)
		} else { self.source = nil }
		if let attribute = xmlElement.attribute(forName: "operand") {
			self.operand = GlesTexcombinerOperandRgbEnum(attribute.stringValue!)
		} else { self.operand = nil }
		if let attribute = xmlElement.attribute(forName: "sampler") {
			self.sampler = String(attribute.stringValue!)
		} else { self.sampler = nil }
	}

}
/**
*/
final class GlesTexcombinerArgumentAlphaType : ColladaType {
	/***/
	let source: GlesTexcombinerSourceEnum?

	/***/
	let operand: GlesTexcombinerOperandAlphaEnum?

	/***/
	let sampler: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "source") {
			self.source = GlesTexcombinerSourceEnum(attribute.stringValue!)
		} else { self.source = nil }
		if let attribute = xmlElement.attribute(forName: "operand") {
			self.operand = GlesTexcombinerOperandAlphaEnum(attribute.stringValue!)
		} else { self.operand = nil }
		if let attribute = xmlElement.attribute(forName: "sampler") {
			self.sampler = String(attribute.stringValue!)
		} else { self.sampler = nil }
	}

}
/**
			Defines the RGB portion of a texture_pipeline command. This is a combiner-mode texturing operation.
			*/
final class GlesTexcombinerCommandRgbType : ColladaType {
	/***/
	let theOperator: GlesTexcombinerOperatorRgbEnum?

	/***/
	let scale: Float?

	/***/
	let argument: [GlesTexcombinerArgumentRgbType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "operator") {
			self.theOperator = GlesTexcombinerOperatorRgbEnum(attribute.stringValue!)
		} else { self.theOperator = nil }
		if let attribute = xmlElement.attribute(forName: "scale") {
			self.scale = Float(attribute.stringValue!)!
		} else { self.scale = nil }
		self.argument = xmlElement.elements(forName: "argument").map { GlesTexcombinerArgumentRgbType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class GlesTexcombinerCommandAlphaType : ColladaType {
	/***/
	let theOperator: GlesTexcombinerOperatorAlphaEnum?

	/***/
	let scale: Float?

	/***/
	let argument: [GlesTexcombinerArgumentAlphaType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "operator") {
			self.theOperator = GlesTexcombinerOperatorAlphaEnum(attribute.stringValue!)
		} else { self.theOperator = nil }
		if let attribute = xmlElement.attribute(forName: "scale") {
			self.scale = Float(attribute.stringValue!)!
		} else { self.scale = nil }
		self.argument = xmlElement.elements(forName: "argument").map { GlesTexcombinerArgumentAlphaType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class GlesTexcombinerCommandType : ColladaType {


	/***/
	let constant: GlesTextureConstantType?


	/***/
	let RGB: GlesTexcombinerCommandRgbType?


	/***/
	let alpha: GlesTexcombinerCommandAlphaType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "constant").first {
			self.constant = GlesTextureConstantType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.constant = nil }
		if let childElement = xmlElement.elements(forName: "RGB").first {
			self.RGB = GlesTexcombinerCommandRgbType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.RGB = nil }
		if let childElement = xmlElement.elements(forName: "alpha").first {
			self.alpha = GlesTexcombinerCommandAlphaType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.alpha = nil }
	}

}
/**
			Defines a set of texturing commands that will be converted into multitexturing operations using glTexEnv in regular and combiner mode.
			*/
final class GlesTexturePipelineType : ColladaType {
	/**
				The sid attribute is a text string value containing the sub-identifier of this element. 
				This value must be unique within the scope of the parent element. Optional attribute.
				*/
	let sid: SidType?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
	}

}
/**Sampling state that can be sharable between samplers because there is often heavy re-use*/
final class GlesSamplerType : ColladaType {


	/***/
	let instanceImage: InstanceImageType?

	/**
*/
final class Texcoord : ColladaType {
	/***/
	let semantic: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "semantic") {
			self.semantic = String(attribute.stringValue!)
		} else { self.semantic = nil }
	}

}
	/***/
	let texcoord: Texcoord?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "instance_image").first {
			self.instanceImage = InstanceImageType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.instanceImage = nil }
		if let childElement = xmlElement.elements(forName: "texcoord").first {
			self.texcoord = Texcoord(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.texcoord = nil }
	}

}
/**
			Create a new, named param object in the GLES Runtime, assign it a type, an initial value, and additional attributes at declaration time.
			*/
final class GlesNewparamType : ColladaType {
	/**
				The sid attribute is a text string value containing the sub-identifier of this element. 
				This value must be unique within the scope of the parent element.
				*/
	let sid: SidType

	/**
					The annotate element allows you to specify an annotation for this new param.
					*/
	let annotate: [FxAnnotateType]


	/**
					The semantic element allows you to specify a semantic for this new param.
					*/
	let semantic: String?


	/**
					The modifier element allows you to specify a modifier for this new param.
					*/
	let modifier: FxModifierEnum?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		if let childElement = xmlElement.elements(forName: "modifier").first {
			self.modifier = FxModifierEnum(childElement.stringValue!)
		} else { self.modifier = nil }
	}

}
/**
			Opens a block of GLES platform-specific data types and technique declarations.
			*/
final class ProfileGlesType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The type of platform. This is a vendor-defined character string that indicates the platform or capability target for the technique. Optional
					*/
	let platform: String?

	/***/
	let asset: AssetType?


	/***/
	let newparam: [GlesNewparamType]

	/**
*/
final class Technique : ColladaType {
	/***/
	let id: String?

	/**
								The sid attribute is a text string value containing the sub-identifier of this element. 
								This value must be unique within the scope of the parent element.
								*/
	let sid: SidType

	/***/
	let asset: AssetType?


	/***/
	let annotate: [FxAnnotateType]

	/**
*/
final class Pass : ColladaType {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/***/
	let annotate: [FxAnnotateType]

	/**
*/
final class States : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/***/
	let states: States?

	/**
*/
final class Evaluate : ColladaType {


	/***/
	let colorTarget: [FxColortargetType]


	/***/
	let depthTarget: [FxDepthtargetType]


	/***/
	let stencilTarget: [FxStenciltargetType]


	/***/
	let colorClear: [FxClearcolorType]


	/***/
	let depthClear: [FxCleardepthType]


	/***/
	let stencilClear: [FxClearstencilType]


	/***/
	let draw: FxDrawType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/***/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
									A static declaration of all the render states, shaders, and settings for one rendering pipeline.
									*/
	let pass: [Pass]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.pass = xmlElement.elements(forName: "pass").map { Pass(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { GlesNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			A self contained description of a shader effect.
			*/
final class EffectType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The effect element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The annotate element allows you to specify an annotation on this effect.
						*/
	let annotate: [FxAnnotateType]


	/**
						The newparam element allows you to create new effect parameters which can be shared by multipe profiles.
						*/
	let newparam: [FxNewparamType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.newparam = xmlElement.elements(forName: "newparam").map { FxNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		sourcesToObjects[self.id] = self }

}
/**
			The library_effects element declares a module of effect elements.
			*/
final class LibraryEffectsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_effects element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one effect element.
						*/
	let effect: [EffectType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.effect = xmlElement.elements(forName: "effect").map { EffectType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			An axis-aligned, centered box primitive.
			*/
final class BoxType : ColladaType {


	/**
						3 float values that represent the extents of the box
						*/
	let halfExtents: Float3Type


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.halfExtents = Float3Type(xmlElement.elements(forName: "half_extents").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			An infinite plane primitive.
			*/
final class PlaneType : ColladaType {


	/**
						4 float values that represent the coefficients for the plane's equation:    Ax + By + Cz + D = 0
						*/
	let equation: Float4Type


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.equation = Float4Type(xmlElement.elements(forName: "equation").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			A centered sphere primitive.
			*/
final class SphereType : ColladaType {


	/**
						A float value that represents the radius of the sphere
						*/
	let radius: FloatType


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.radius = FloatType(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class EllipsoidType : ColladaType {


	/***/
	let size: Float3Type



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.size = Float3Type(xmlElement.elements(forName: "size").first!.stringValue!)!
	}

}
/**
			A cylinder primitive that is centered on, and aligned with. the local Y axis.
			*/
final class CylinderType : ColladaType {


	/**
						A float value that represents the length of the cylinder along the Y axis.
						*/
	let height: FloatType


	/**
						float2 values that represent the radii of the cylinder.
						*/
	let radius: Float2Type


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.height = FloatType(xmlElement.elements(forName: "height").first!.stringValue!)!
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			A capsule primitive that is centered on and aligned with the local Y axis.
			*/
final class CapsuleType : ColladaType {


	/**
						A float value that represents the length of the line segment connecting the centers 
						of the capping hemispheres.
						*/
	let height: FloatType


	/**
						Three float values that represent the radii of the capsule (it may be elliptical).
						*/
	let radius: Float3Type


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.height = FloatType(xmlElement.elements(forName: "height").first!.stringValue!)!
		self.radius = Float3Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			A general container for force-fields. At the moment, it only has techniques and extra elements.
			*/
final class ForceFieldType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The force_field element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						This element must contain at least one non-common profile technique.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_force_fields element declares a module of force_field elements.
			*/
final class LibraryForceFieldsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_force_fields element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one force_field element.
						*/
	let forceField: [ForceFieldType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.forceField = xmlElement.elements(forName: "force_field").map { ForceFieldType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			This element defines the physical properties of an object. It contains a technique/profile with 
			parameters. The COMMON profile defines the built-in names, such as static_friction.
			*/
final class PhysicsMaterialType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The physics_material element may contain an asset element.
						*/
	let asset: AssetType?

	/**
*/
final class TechniqueCommon : ColladaType {


	/**
									Dynamic friction coefficient
									*/
	let dynamicFriction: TargetableFloatType?


	/**
									The proportion of the kinetic energy preserved in the impact (typically ranges from 0.0 to 1.0)
									*/
	let restitution: TargetableFloatType?


	/**
									Static friction coefficient
									*/
	let staticFriction: TargetableFloatType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "dynamic_friction").first {
			self.dynamicFriction = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.dynamicFriction = nil }
		if let childElement = xmlElement.elements(forName: "restitution").first {
			self.restitution = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.restitution = nil }
		if let childElement = xmlElement.elements(forName: "static_friction").first {
			self.staticFriction = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.staticFriction = nil }
	}

}
	/**
						The technique_common element specifies the physics_material information for the common profile 
						which all COLLADA implementations need to support.
						*/
	let techniqueCommon: TechniqueCommon


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_physics_materials element declares a module of physics_material elements.
			*/
final class LibraryPhysicsMaterialsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_physics_materials element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one physics_material element.
						*/
	let physicsMaterial: [PhysicsMaterialType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.physicsMaterial = xmlElement.elements(forName: "physics_material").map { PhysicsMaterialType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**     This element defines all the edges used in the brep     structure.    */
final class EdgesType : ColladaType {
	/***/
	let id: String

	/***/
	let name: String?

	/***/
	let count: Int32

	/**
							Five input elements are needed to define an
							edge, one for referencing the curve, two for
							referencing the two vertices, one for the
							orientation of the first vertex (the second
							is the opposite of the first) and one for
							the parametric values of the curve.
						*/
	let input: [InputLocalOffsetType]


	/**        The indices for refrencing curves and        vertices.       */
	let p: PType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = Int32(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		sourcesToObjects[self.id] = self	}

}
/**     This element defines all the wires used in the brep     structure.    */
final class WiresType : ColladaType {
	/***/
	let id: String

	/***/
	let name: String?

	/***/
	let count: UintType

	/**
							One input elements is needed to define a
							wire by its edges. The second is needed for
							orientation of the edges
						*/
	let input: [InputLocalOffsetType]


	/***/
	let vcount: ListOfUintsType


	/**
							The indices of the edges for each wire.
						*/
	let p: PType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		sourcesToObjects[self.id] = self	}

}
/**     This element defines all the faces used in the brep     structure.    */
final class FacesType : ColladaType {
	/***/
	let id: String

	/***/
	let name: String?

	/***/
	let count: UintType

	/**
							Two input elements are needed to define a
							face, one for referencing the surface and
							one for referencing the wires themselfs. The
							third is needed for the orientation of each
							wires.
						*/
	let input: [InputLocalOffsetType]


	/***/
	let vcount: ListOfUintsType


	/**
							The indices for referencing the surface and
							wires for each face.
						*/
	let p: PType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		sourcesToObjects[self.id] = self	}

}
/**     This element defines all the shells used in the brep     structure.    */
final class ShellsType : ColladaType {
	/***/
	let id: String

	/***/
	let name: String?

	/***/
	let count: UintType

	/**
							One input elements is needed to define a
							shell by its faces. The second is need for
							the orientation of the faces
						*/
	let input: [InputLocalOffsetType]


	/***/
	let vcount: ListOfUintsType


	/**
							The indices of the faces for each shell.
						*/
	let p: PType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		sourcesToObjects[self.id] = self }

}
/**     This element defines all the solids used in the brep     structure.    */
final class SolidsType : ColladaType {
	/***/
	let id: String

	/***/
	let name: String?

	/***/
	let count: UintType

	/**
							One input elements is needed to define a
							solid by its shells. The second is need fo
							the orientation of the shells.
						*/
	let input: [InputLocalOffsetType]


	/***/
	let vcount: ListOfUintsType


	/**
							The indices of the shells for each solid.
						*/
	let p: PType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		sourcesToObjects[self.id] = self	}

}
/**     Describes an infinite line. A line is defined and     positioned in space with an axis which gives it an     origin and a unit vector. The Geom_Line line is     parameterized: P (U) = O + U*Dir, where: - P is the     point of parameter U, - O is the origin and Dir the unit     vector of its positioning axis. The parameter range is ]     -infinite, +infinite [. The orientation of the line is     given by the unit vector of its positioning axis.    */
final class LineType : ColladaType {


	/***/
	let origin: Float3Type


	/***/
	let direction: Float3Type


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.origin = Float3Type(xmlElement.elements(forName: "origin").first!.stringValue!)!
		self.direction = Float3Type(xmlElement.elements(forName: "direction").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**     Describes a circle. A circle is defined by its radius     and, as with any conic curve, is positioned in space     with a right-handed coordinate system where: - the     origin is the center of the circle, and - the origin, "X     Direction" and "Y Direction" define the plane of the     circle. This coordinate system is the local coordinate     system of the circle. The "main Direction" of this     coordinate system is the vector normal to the plane of     the circle. The axis, of which the origin and unit     vector are respectively the origin and "main Direction"     of the local coordinate system, is termed the "Axis" or     "main Axis" of the circle. The "main Direction" of the     local coordinate system gives an explicit orientation to     the circle (definition of the trigonometric sense),     determining the direction in which the parameter     increases along the circle. The Geom_Circle circle is     parameterized by an angle: P(U) = O + R*Cos(U)*XDir +     R*Sin(U)*YDir, where: - P is the point of parameter U, -     O, XDir and YDir are respectively the origin, "X     Direction" and "Y Direction" of its local coordinate     system, - R is the radius of the circle. The "X     Axis" of the local coordinate system therefore     defines the origin of the parameter of the circle.     The parameter is the angle with this "X Direction".     A circle is a closed and periodic curve. The period     is 2.*Pi and the parameter range is [ 0, 2.*Pi [.    */
final class CircleType : ColladaType {


	/***/
	let radius: FloatType


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.radius = FloatType(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**     Describes an ellipse in 3D space. An ellipse is defined     by its major and minor radii and, as with any conic     curve, is positioned in space with a right-handed     coordinate system where: - the origin is the center of     the ellipse, - the "X Direction" defines the     major axis, and - the "Y Direction" defines     the minor axis. The origin, "X Direction" and     "Y Direction" of this coordinate system define     the plane of the ellipse. The coordinate system is the     local coordinate system of the ellipse. The "main     Direction" of this coordinate system is the vector     normal to the plane of the ellipse. The axis, of which     the origin and unit vector are respectively the origin     and "main Direction" of the local coordinate     system, is termed the "Axis" or "main     Axis" of the ellipse. The "main     Direction" of the local coordinate system gives an     explicit orientation to the ellipse (definition of the     trigonometric sense), determining the direction in which     the parameter increases along the ellipse. The     Geom_Ellipse ellipse is parameterized by an angle: P(U)     = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir where:     - P is the point of parameter U, - O, XDir and YDir are     respectively the origin, "X <br>     Direction" and "Y Direction" of its local     coordinate system, - MajorRad and MinorRad are the major     and minor radii of the ellipse. The "X Axis"     of the local coordinate system therefore defines the     origin of the parameter of the ellipse. An ellipse is a     closed and periodic curve. The period is 2.*Pi and the     parameter range is [ 0, 2.*Pi [.    */
final class EllipseType : ColladaType {


	/***/
	let radius: Float2Type


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**     Describes a parabola in 3D space. A parabola is defined     by its focal length (i.e. the distance between its focus     and its apex) and is positioned in space with a     coordinate system where: - the origin is     the apex of the parabola, - the "X Axis"     defines the axis of symmetry; the parabola is on the     positive side of this axis, - the origin, "X     Direction" and "Y Direction" define the     plane of the parabola. This coordinate system is the     local coordinate system of the parabola. The "main     Direction" of this coordinate system is a vector     normal to the plane of the parabola. The axis, of which     the origin and unit vector are respectively the origin     and "main Direction" of the local coordinate     system, is termed the "Axis" or "main     Axis" of the parabola. The "main     Direction" of the local coordinate system gives an     explicit orientation to the parabola, determining the     direction in which the parameter increases along the     parabola. The Geom_Parabola parabola is parameterized as     follows: P(U) = O + U*U/(4.*F)*XDir + U*YDir where: - P     is the point of parameter U, - O, XDir and YDir are     respectively the origin, "X <br>     Direction" and "Y Direction" of its local     coordinate system, - F is the focal length of the     parabola. The parameter of the parabola is therefore its     Y coordinate in the local coordinate system, with the     "X <br> Axis" of the local coordinate     system defining the origin of the parameter. The     parameter range is ] -infinite, +infinite [.    */
final class ParabolaType : ColladaType {


	/***/
	let focal: FloatType


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.focal = FloatType(xmlElement.elements(forName: "focal").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**     Describes a branch of a hyperbola in 3D space. A     hyperbola is defined by its major and minor radii and,     as with any conic curve, is positioned in space with a     right-handed coordinate system where: - the origin is     the center of the hyperbola, - the "X Direction" defines     the major axis, and - the "Y Direction" defines the     minor axis. The origin, "X Direction" and "Y Direction"     of this coordinate system define the plane of the     hyperbola. The coordinate system is the local coordinate     system of the hyperbola. The branch of the hyperbola     described is the one located on the positive side of the     major axis. The "main Direction" of the local coordinate     system is a vector normal to the plane of the hyperbola.     The axis, of which the origin and unit vector are     respectively the origin and "main Direction" of the     local coordinate system, is termed the "Axis" or "main     Axis" of the hyperbola. The "main Direction" of the     local coordinate system gives an explicit orientation to     the hyperbola, determining the direction in which the     parameter increases along the hyperbola. The     Geom_Hyperbola hyperbola is parameterized as follows:     P(U) = O + MajRad*Cosh(U)*XDir + MinRad*Sinh(U)*YDir,     where: - P is the point of parameter U, - O, XDir and     YDir are respectively the origin, "X Direction" and "Y     Direction" of its local coordinate system, - MajRad and     MinRad are the major and minor radii of the hyperbola.     The "X Axis" of the local coordinate system therefore     defines the origin of the parameter of the hyperbola.     The parameter range is ] -infinite, +infinite [.    */
final class HyperbolaType : ColladaType {


	/***/
	let radius: Float2Type


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class TorusType : ColladaType {


	/***/
	let radius: Float2Type


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class PcurvesType : ColladaType {
	/***/
	let id: String

	/***/
	let name: String?

	/***/
	let count: UintType

	/**
							The first two inputs are needed to reference
							the edge-face-connection. The third input
							references the pcurve.
						*/
	let input: [InputLocalOffsetType]


	/***/
	let vcount: ListOfUintsType


	/***/
	let p: PType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		sourcesToObjects[self.id] = self	}

}
/**
			The SIDREF_array element declares the storage for a homogenous array of SID reference values.
			*/
final class SidrefArrayType : ColladaType {



	let data: ListOfSidrefsType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = ListOfSidrefsType(xmlElement.stringValue!)!
	}

}
/**
			The source element declares a data repository that provides values according to the semantics of an 
			input element that refers to it.
			*/
final class SourceType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Required attribute.
					*/
	let id: String

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The source element may contain an asset element.
						*/
	let asset: AssetType?

	/**
*/
final class TechniqueCommon : ColladaType {


	/**
									The source's technique_common must have one and only one accessor.
									*/
	let accessor: AccessorType



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.accessor = AccessorType(xmlElement: xmlElement.elements(forName: "accessor").first!, sourcesToObjects: &sourcesToObjects)
	}

}
	/**
						The technique common specifies the common method for accessing this source element's data.
						*/
	let techniqueCommon: TechniqueCommon?


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]

	enum SourceTypeChoice0 {
		/**
							The source element may contain a token_array.
							*/
		case tokenArray(TokenArrayType)
		/**
								The source element may contain an
								IDREF_array.
							*/
		case IDREFArray(IdrefArrayType)
		/**
								The source element may contain a
								Name_array.
							*/
		case NameArray(NameArrayType)
		/**
								The source element may contain a
								bool_array.
							*/
		case boolArray(BoolArrayType)
		/**
								The source element may contain a
								float_array.
							*/
		case floatArray(FloatArrayType)
		/**
								The source element may contain an
								int_array.
							*/
		case intArray(IntArrayType)
		/***/
		case SIDREFArray(SidrefArrayType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "token_array" {	self = .tokenArray(TokenArrayType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "token_array").first {
	self = .tokenArray(TokenArrayType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "IDREF_array" {	self = .IDREFArray(IdrefArrayType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "IDREF_array").first {
	self = .IDREFArray(IdrefArrayType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "Name_array" {	self = .NameArray(NameArrayType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "Name_array").first {
	self = .NameArray(NameArrayType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "bool_array" {	self = .boolArray(BoolArrayType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "bool_array").first {
	self = .boolArray(BoolArrayType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "float_array" {	self = .floatArray(FloatArrayType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "float_array").first {
	self = .floatArray(FloatArrayType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "int_array" {	self = .intArray(IntArrayType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "int_array").first {
	self = .intArray(IntArrayType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "SIDREF_array" {	self = .SIDREFArray(SidrefArrayType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "SIDREF_array").first {
	self = .SIDREFArray(SidrefArrayType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: SourceTypeChoice0?


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		if let childElement = xmlElement.elements(forName: "technique_common").first {
			self.techniqueCommon = TechniqueCommon(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.techniqueCommon = nil }
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = SourceTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)
        sourcesToObjects[self.id] = self	}

}
/**
			The animation element categorizes the declaration of animation information. The animation 
			hierarchy contains elements that describe the animation's key-frame data and sampler functions, 
			ordered in such a way to group together animations that should be executed together.
			*/
final class AnimationType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The animation element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]

	enum AnimationTypeChoice0 {
		/***/
		case animation(AnimationType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "animation" {	self = .animation(AnimationType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "animation").first {
	self = .animation(AnimationType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: AnimationTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = AnimationTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_animations element declares a module of animation elements.
			*/
final class LibraryAnimationsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_animations element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one animation element.
						*/
	let animation: [AnimationType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.animation = xmlElement.elements(forName: "animation").map { AnimationType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The skin element contains vertex and primitive information sufficient to describe blend-weight skinning.
			*/
final class SkinType : ColladaType {
	/**
					The source attribute contains a URI reference to the base mesh, (a static mesh or a morphed mesh).
					This also provides the bind-shape of the skinned mesh.  Required attribute.
					*/
	let source: String

	/**
						This provides extra information about the position and orientation of the base mesh before binding. 
						If bind_shape_matrix is not specified then an identity matrix may be used as the bind_shape_matrix.
						The bind_shape_matrix element may occur zero or one times.
						*/
	let bindShapeMatrix: Float4x4Type?


	/**
						The skin element must contain at least three source elements.
						*/
	let sources: [SourceType]

	/**
*/
final class Joints : ColladaType {


	/**
									The input element must occur at least twice. These inputs are local inputs.
									*/
	let input: [InputLocalType]


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
						The joints element associates joint, or skeleton, nodes with attribute data.  
						In COLLADA, this is specified by the inverse bind matrix of each joint (influence) in the skeleton.
						*/
	let joints: Joints

	/**
*/
final class VertexWeights : ColladaType {
	/**
								The count attribute describes the number of vertices in the base mesh. Required element. 
								*/
	let count: UintType

	/**
									The input element must occur at least twice.
									*/
	let input: [InputLocalOffsetType]


	/**
									The vcount element contains a list of integers describing the number of influences for each vertex.
									The vcount element may occur once.
									*/
	let vcount: ListOfUintsType?


	/**
									The v element describes which bones and attributes are associated with each vertex.  An index 
									of -1 into the array of joints refers to the bind shape.  Weights should be normalized before use.
									The v element must occur zero or one times.
									*/
	let v: ListOfIntsType?


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "vcount").first {
			self.vcount = ListOfUintsType(childElement.stringValue!)!
		} else { self.vcount = nil }
		if let childElement = xmlElement.elements(forName: "v").first {
			self.v = ListOfIntsType(childElement.stringValue!)!
		} else { self.v = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
						The vertex_weights element associates a set of joint-weight pairs with each vertex in the base mesh.
						*/
	let vertexWeights: VertexWeights


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "bind_shape_matrix").first {
			self.bindShapeMatrix = Float4x4Type(childElement.stringValue!)!
		} else { self.bindShapeMatrix = nil }
		self.sources = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.joints = Joints(xmlElement: xmlElement.elements(forName: "joints").first!, sourcesToObjects: &sourcesToObjects)
		self.vertexWeights = VertexWeights(xmlElement: xmlElement.elements(forName: "vertex_weights").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The definition of the convex_mesh element is identical to the mesh element with the exception that 
			instead of a complete description (source, vertices, polygons etc.), it may simply point to another 
			geometry to derive its shape. The latter case means that the convex hull of that geometry should 
			be computed and is indicated by the optional "convex_hull_of" attribute.
			*/
final class ConvexMeshType : ColladaType {
	/**
					The convex_hull_of attribute is a URI string of geometry to compute the convex hull of. 
					Optional attribute.
					*/
	let convexHullOf: String?

	/***/
	let source: [SourceType]


	/***/
	let vertices: VerticesType


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]

	enum ConvexMeshTypeChoice0 {
		/***/
		case lines(LinesType)
		/***/
		case linestrips(LinestripsType)
		/***/
		case polygons(PolygonsType)
		/***/
		case polylist(PolylistType)
		/***/
		case triangles(TrianglesType)
		/***/
		case trifans(TrifansType)
		/***/
		case tristrips(TristripsType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "lines" {	self = .lines(LinesType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "lines").first {
	self = .lines(LinesType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "linestrips" {	self = .linestrips(LinestripsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "linestrips").first {
	self = .linestrips(LinestripsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "polygons" {	self = .polygons(PolygonsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "polygons").first {
	self = .polygons(PolygonsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "polylist" {	self = .polylist(PolylistType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "polylist").first {
	self = .polylist(PolylistType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "triangles" {	self = .triangles(TrianglesType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "triangles").first {
	self = .triangles(TrianglesType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "trifans" {	self = .trifans(TrifansType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "trifans").first {
	self = .trifans(TrifansType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "tristrips" {	self = .tristrips(TristripsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "tristrips").first {
	self = .tristrips(TristripsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [ConvexMeshTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "convex_hull_of") {
			self.convexHullOf = String(attribute.stringValue!)
		} else { self.convexHullOf = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vertices = VerticesType(xmlElement: xmlElement.elements(forName: "vertices").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { ConvexMeshTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**
			The mesh element contains vertex and primitive information sufficient to describe basic geometric meshes.
			*/
final class MeshType : ColladaType {


	/**
						The mesh element must contain one or more source elements.
						*/
	let source: [SourceType]


	/**
						The mesh element must contain one vertices element.
						*/
	let vertices: VerticesType


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]

	enum MeshTypeChoice0 {
		/**
							The mesh element may contain any number of lines elements.
							*/
		case lines(LinesType)
		/**
							The mesh element may contain any number of linestrips elements.
							*/
		case linestrips(LinestripsType)
		/**
							The mesh element may contain any number of polygons elements.
							*/
		case polygons(PolygonsType)
		/**
							The mesh element may contain any number of polylist elements.
							*/
		case polylist(PolylistType)
		/**
							The mesh element may contain any number of triangles elements.
							*/
		case triangles(TrianglesType)
		/**
							The mesh element may contain any number of trifans elements.
							*/
		case trifans(TrifansType)
		/**
							The mesh element may contain any number of tristrips elements.
							*/
		case tristrips(TristripsType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "lines" {	self = .lines(LinesType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "lines").first {
	self = .lines(LinesType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "linestrips" {	self = .linestrips(LinestripsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "linestrips").first {
	self = .linestrips(LinestripsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "polygons" {	self = .polygons(PolygonsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "polygons").first {
	self = .polygons(PolygonsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "polylist" {	self = .polylist(PolylistType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "polylist").first {
	self = .polylist(PolylistType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "triangles" {	self = .triangles(TrianglesType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "triangles").first {
	self = .triangles(TrianglesType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "trifans" {	self = .trifans(TrifansType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "trifans").first {
	self = .trifans(TrifansType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "tristrips" {	self = .tristrips(TristripsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "tristrips").first {
	self = .tristrips(TristripsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [MeshTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vertices = VerticesType(xmlElement: xmlElement.elements(forName: "vertices").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { MeshTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**
			The spline element contains control vertex information sufficient to describe basic splines.
			*/
final class SplineType : ColladaType {
	/***/
	let closed: Bool?

	/**
						The mesh element must contain one or more source elements.
						*/
	let source: [SourceType]

	/**
*/
final class ControlVertices : ColladaType {


	/**
						The input element must occur at least one time. These inputs are local inputs.
						*/
	let input: [InputLocalType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**The control vertices element  must occur  exactly one time. It is used to describe the CVs of the spline.*/
	let controlVertices: ControlVertices


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "closed") {
			self.closed = Bool(attribute.stringValue!)!
		} else { self.closed = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.controlVertices = ControlVertices(xmlElement: xmlElement.elements(forName: "control_vertices").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class NurbsSurfaceType : ColladaType {
	/***/
	let degreeU: UintType

	/***/
	let closedU: Bool?

	/***/
	let degreeV: UintType

	/***/
	let closedV: Bool?

	/***/
	let source: [SourceType]

	/**
*/
final class ControlVertices : ColladaType {


	/**
										The input element must occur at
										least one time. These inputs are
										local inputs.
									*/
	let input: [InputLocalType]


	/**
										The extra element may appear any
										number of times.
									*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
							The control vertices element must occur
							exactly one time. It is used to describe the
							CVs of the spline.
						*/
	let controlVertices: ControlVertices


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.degreeU = UintType(xmlElement.attribute(forName: "degree_u")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "closed_u") {
			self.closedU = Bool(attribute.stringValue!)!
		} else { self.closedU = nil }
		self.degreeV = UintType(xmlElement.attribute(forName: "degree_v")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "closed_v") {
			self.closedV = Bool(attribute.stringValue!)!
		} else { self.closedV = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.controlVertices = ControlVertices(xmlElement: xmlElement.elements(forName: "control_vertices").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class NurbsType : ColladaType {
	/***/
	let degree: UintType

	/***/
	let closed: Bool?

	/***/
	let source: [SourceType]

	/**
*/
final class ControlVertices : ColladaType {


	/**
						The input element must occur at least one time. These inputs are local inputs.
									*/
	let input: [InputLocalType]


	/**
						The extra element may appear any number of times.
									*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**The control vertices element  must occur  exactly one time. It is used to describe the CVs of the spline.*/
	let controlVertices: ControlVertices


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.degree = UintType(xmlElement.attribute(forName: "degree")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "closed") {
			self.closed = Bool(attribute.stringValue!)!
		} else { self.closed = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.controlVertices = ControlVertices(xmlElement: xmlElement.elements(forName: "control_vertices").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The morph element describes the data required to blend between sets of static meshes. Each 
			possible mesh that can be blended (a morph target) must be specified.
			*/
final class MorphType : ColladaType {
	/**
					The method attribute specifies the which blending technique to use. The accepted values are 
					NORMALIZED, and RELATIVE. The default value if not specified is NORMALIZED.  Optional attribute.
					*/
	let method: MorphMethodEnum?

	/**
					The source attribute indicates the base mesh. Required attribute.
					*/
	let source: String

	/**
						The morph element must contain at least two source elements.
						*/
	let sources: [SourceType]

	/**
*/
final class Targets : ColladaType {


	/**
									The input element must occur at least twice. These inputs are local inputs.
									*/
	let input: [InputLocalType]


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
						The targets element declares the morph targets, their weights and any user defined attributes 
						associated with them.
						*/
	let targets: Targets


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "method") {
			self.method = MorphMethodEnum(attribute.stringValue!)
		} else { self.method = nil }
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
		self.sources = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.targets = Targets(xmlElement: xmlElement.elements(forName: "targets").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The controller element categorizes the declaration of generic control information.
			A controller is a device or mechanism that manages and directs the operations of another object.
			*/
final class ControllerType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This value 
					must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The controller element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]

	enum ControllerTypeChoice0 {
		/**
							The controller element may contain either a skin element or a morph element.
							*/
		case skin(SkinType)
		/**
							The controller element may contain either a skin element or a morph element.
							*/
		case morph(MorphType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "skin" {	self = .skin(SkinType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "skin").first {
	self = .skin(SkinType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "morph" {	self = .morph(MorphType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "morph").first {
	self = .morph(MorphType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: ControllerTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = ControllerTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_controllers element declares a module of controller elements.
			*/
final class LibraryControllersType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_controllers element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one controller element.
						*/
	let controller: [ControllerType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.controller = xmlElement.elements(forName: "controller").map { ControllerType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class OriginType : ColladaType {



	let data: Float3Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float3Type(xmlElement.stringValue!)!
	}

}
/**
*/
final class OrientType : ColladaType {



	let data: Float4Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float4Type(xmlElement.stringValue!)!
	}

}
/**     A curveType defines the attributes of a curve element.     With rotate and translate the surface can be positioned     to its right location.    */
final class CurveType : ColladaType {
	/**The id of a curve.*/
	let sid: SidType?

	/**      The name of a curve.     */
	let name: String?

	/***/
	let orient: [OrientType]


	/***/
	let origin: OriginType?

	enum CurveTypeChoice0 {
		/***/
		case line(LineType)
		/***/
		case circle(CircleType)
		/***/
		case ellipse(EllipseType)
		/***/
		case parabola(ParabolaType)
		/***/
		case hyperbola(HyperbolaType)
		/***/
		case nurbs(NurbsType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "line" {	self = .line(LineType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "line").first {
	self = .line(LineType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "circle" {	self = .circle(CircleType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "circle").first {
	self = .circle(CircleType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "ellipse" {	self = .ellipse(EllipseType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "ellipse").first {
	self = .ellipse(EllipseType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "parabola" {	self = .parabola(ParabolaType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "parabola").first {
	self = .parabola(ParabolaType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "hyperbola" {	self = .hyperbola(HyperbolaType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "hyperbola").first {
	self = .hyperbola(HyperbolaType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "nurbs" {	self = .nurbs(NurbsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "nurbs").first {
	self = .nurbs(NurbsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: CurveTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.orient = xmlElement.elements(forName: "orient").map { OrientType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "origin").first {
			self.origin = OriginType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.origin = nil }
		self.choice0 = CurveTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
	}

}
/**
				This element holds all the pcurves that are needed for
				the geometrical description of the topological entities
				edges on the surfaces they lie on.
			*/
final class SurfaceCurvesType : ColladaType {


	/***/
	let curve: [CurveType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.curve = xmlElement.elements(forName: "curve").map { CurveType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
				This element holds all the curves that are needed for
				the geometrical description of the topological entities
				edges.
			*/
final class CurvesType : ColladaType {


	/***/
	let curve: [CurveType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.curve = xmlElement.elements(forName: "curve").map { CurveType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**     Describes a surface of linear extrusion ("extruded     surface"), e.g. a generalized cylinder. Such a surface     is obtained by sweeping a curve (called the "extruded     curve" or "basis") in a given direction (referred to as     the "direction of extrusion" and defined by a unit     vector). The u parameter is along the extruded curve.     The v parameter is along the direction of extrusion. The     parameter range for the u parameter is defined by the     reference curve. The parameter range for the v parameter     is ] - infinity, + infinity [. The position of the curve     gives the origin of the v parameter. The form of a     surface of linear extrusion is generally a ruled     surface. It can be: - a cylindrical surface, if the     extruded curve is a circle, or a trimmed circle, with an     axis parallel to the direction of extrusion, or - a     planar surface, if the extruded curve is a line.    */
final class SweptSurfaceType : ColladaType {


	/***/
	let curve: CurveType


	/***/
	let extra: [ExtraType]

	enum SweptSurfaceTypeChoice0 {
		/***/
		case direction(Float3Type)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "direction" {	self = .direction(Float3Type(xmlElement.stringValue!)!)
	return
}
return nil
}
	}

	/***/
	let choice0: SweptSurfaceTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.curve = CurveType(xmlElement: xmlElement.elements(forName: "curve").first!, sourcesToObjects: &sourcesToObjects)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = SweptSurfaceTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
	}

}
/**
*/
final class ConeType : ColladaType {


	/***/
	let radius: FloatType


	/***/
	let angle: Float


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.radius = FloatType(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.angle = Float(xmlElement.elements(forName: "angle").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**     A surfaceType defines the attributes of a surface     element. With rotate and translate the surface can be     positioned to its right location.    */
final class SurfaceType : ColladaType {
	/**      The id of the surface.     */
	let sid: SidType?

	/**      The name of the surface.     */
	let name: String?

	/***/
	let orient: [OrientType]


	/***/
	let origin: OriginType?
/**
*/
final class Cylinder : ColladaType {


	/***/
	let radius: FloatType


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.radius = FloatType(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	enum SurfaceTypeChoice0 {
		/***/
		case plane(PlaneType)
		/***/
		case sphere(SphereType)
		/***/
		case torus(TorusType)
		/***/
		case sweptSurface(SweptSurfaceType)
		/***/
		case nurbsSurface(NurbsSurfaceType)
		/***/
		case cone(ConeType)
		/***/
		case cylinder(Cylinder)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "plane" {	self = .plane(PlaneType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "plane").first {
	self = .plane(PlaneType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "sphere" {	self = .sphere(SphereType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "sphere").first {
	self = .sphere(SphereType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "torus" {	self = .torus(TorusType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "torus").first {
	self = .torus(TorusType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "swept_surface" {	self = .sweptSurface(SweptSurfaceType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "swept_surface").first {
	self = .sweptSurface(SweptSurfaceType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "nurbs_surface" {	self = .nurbsSurface(NurbsSurfaceType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "nurbs_surface").first {
	self = .nurbsSurface(NurbsSurfaceType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "cone" {	self = .cone(ConeType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "cone").first {
	self = .cone(ConeType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "cylinder" {	self = .cylinder(Cylinder(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "cylinder").first {
	self = .cylinder(Cylinder(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: SurfaceTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.orient = xmlElement.elements(forName: "orient").map { OrientType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "origin").first {
			self.origin = OriginType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.origin = nil }
		self.choice0 = SurfaceTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
	}

}
/**
*/
final class SurfacesType : ColladaType {


	/***/
	let surface: [SurfaceType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.surface = xmlElement.elements(forName: "surface").map { SurfaceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**     The brep element contains the complete topological     description of a static structure. There are also the     corresponding geometrical descriptions of the vertices,     edges and faces.    */
final class BrepType : ColladaType {


	/**
							The curves element holds all the curves that
							are needed for the brep structure. Here are
							the curves that describes the kind of an
							edge, but here are also the curves that are
							needed to create a extrusion for a surface.
							This element is needed, if the edges element
							is present.
						*/
	let curves: CurvesType?


	/***/
	let surfaceCurves: SurfaceCurvesType?


	/**
							The surfaces element holds all the surfaces
							that are needed for the brep structure. Here
							are the surfaces that describes the kind of
							a face. This element is needed, if the faces
							element is present.
						*/
	let surfaces: SurfacesType?


	/**
							The source elements define the access of the
							elements vertices, edges and faces to their
							geometric entities. At least one source
							element is needed for the vertices. If there
							are edges a second source element is needed
							for accessing the curves in the curve
							element by an IDREF_array. If there are
							faces the third source element is needed for
							accessing the surfaces in the surface
							element by an IDREF_array.
						*/
	let source: [SourceType]


	/**
							This element defines all the vertices of an
							brep structure. Vertices are the base
							topological entity for all brep structures,
							so this element is ever needed.
						*/
	let vertices: VerticesType


	/**
							This element defines all the edges of the
							brep structure.
						*/
	let edges: EdgesType?


	/**
							This element defines all the wires of the
							brep structure.
						*/
	let wires: WiresType?


	/**
							This element defines all the faces of the
							brep structure.
						*/
	let faces: FacesType?


	/***/
	let pcurves: PcurvesType?


	/**
							This element defines all the shells of the
							brep structure.
						*/
	let shells: ShellsType?


	/**
							This element defines all the solids of the
							brep structure.
						*/
	let solids: SolidsType?


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "curves").first {
			self.curves = CurvesType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.curves = nil }
		if let childElement = xmlElement.elements(forName: "surface_curves").first {
			self.surfaceCurves = SurfaceCurvesType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.surfaceCurves = nil }
		if let childElement = xmlElement.elements(forName: "surfaces").first {
			self.surfaces = SurfacesType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.surfaces = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.vertices = VerticesType(xmlElement: xmlElement.elements(forName: "vertices").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "edges").first {
			self.edges = EdgesType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.edges = nil }
		if let childElement = xmlElement.elements(forName: "wires").first {
			self.wires = WiresType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.wires = nil }
		if let childElement = xmlElement.elements(forName: "faces").first {
			self.faces = FacesType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.faces = nil }
		if let childElement = xmlElement.elements(forName: "pcurves").first {
			self.pcurves = PcurvesType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.pcurves = nil }
		if let childElement = xmlElement.elements(forName: "shells").first {
			self.shells = ShellsType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.shells = nil }
		if let childElement = xmlElement.elements(forName: "solids").first {
			self.solids = SolidsType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.solids = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			Geometry describes the visual shape and appearance of an object in the scene.
			The geometry element categorizes the declaration of geometric information. Geometry is a 
			branch of mathematics that deals with the measurement, properties, and relationships of 
			points, lines, angles, surfaces, and solids.
			*/
final class GeometryType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The geometry element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]

	enum GeometryTypeChoice0 {
		/**
								The geometry element may contain only
								one mesh or convex_mesh.
							*/
		case convexMesh(ConvexMeshType)
		/**
								The geometry element may contain only
								one mesh or convex_mesh.
							*/
		case mesh(MeshType)
		/***/
		case spline(SplineType)
		/***/
		case brep(BrepType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "convex_mesh" {	self = .convexMesh(ConvexMeshType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "convex_mesh").first {
	self = .convexMesh(ConvexMeshType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "mesh" {	self = .mesh(MeshType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "mesh").first {
	self = .mesh(MeshType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "spline" {	self = .spline(SplineType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "spline").first {
	self = .spline(SplineType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "brep" {	self = .brep(BrepType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "brep").first {
	self = .brep(BrepType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: GeometryTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = GeometryTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_geometries element declares a module of geometry elements.
			*/
final class LibraryGeometriesType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_geometries element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one geometry element.
						*/
	let geometry: [GeometryType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.geometry = xmlElement.elements(forName: "geometry").map { GeometryType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class LimitsSubType : ColladaType {



	let data: FloatType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
*/
final class InstanceJointType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class TargetableFloat4Type : ColladaType {



	let data: Float4Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float4Type(xmlElement.stringValue!)!
	}

}
/**
			The rotate element contains an angle and a mathematical vector that represents the axis of rotation.
			*/
final class RotateType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class LinkType : ColladaType {
	/***/
	let sid: SidType?

	/***/
	let name: String?


	enum LinkTypeChoice0 {
		/***/
		case rotate(RotateType)
		/***/
		case translate(TranslateType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "rotate" {	self = .rotate(RotateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "rotate").first {
	self = .rotate(RotateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "translate" {	self = .translate(TranslateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "translate").first {
	self = .translate(TranslateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [LinkTypeChoice0]

/**
*/
final class AttachmentFull : ColladaType {
	/***/
	let joint: String

	/***/
	let link: LinkType

	enum AttachmentFullChoice0 {
		/***/
		case rotate(RotateType)
		/***/
		case translate(TranslateType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "rotate" {	self = .rotate(RotateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "rotate").first {
	self = .rotate(RotateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "translate" {	self = .translate(TranslateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "translate").first {
	self = .translate(TranslateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [AttachmentFullChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.joint = String(xmlElement.attribute(forName: "joint")!.stringValue!)
		self.link = LinkType(xmlElement: xmlElement.elements(forName: "link").first!, sourcesToObjects: &sourcesToObjects)
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { AttachmentFullChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**
*/
final class AttachmentStart : ColladaType {
	/***/
	let joint: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.joint = String(xmlElement.attribute(forName: "joint")!.stringValue!)
	}

}
/**
*/
final class AttachmentEnd : ColladaType {
	/***/
	let joint: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.joint = String(xmlElement.attribute(forName: "joint")!.stringValue!)
	}

}
	enum LinkTypeChoice1 {
		/***/
		case attachmentFull(AttachmentFull)
		/***/
		case attachmentStart(AttachmentStart)
		/***/
		case attachmentEnd(AttachmentEnd)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "attachment_full" {	self = .attachmentFull(AttachmentFull(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "attachment_full").first {
	self = .attachmentFull(AttachmentFull(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "attachment_start" {	self = .attachmentStart(AttachmentStart(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "attachment_start").first {
	self = .attachmentStart(AttachmentStart(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "attachment_end" {	self = .attachmentEnd(AttachmentEnd(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "attachment_end").first {
	self = .attachmentEnd(AttachmentEnd(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice1: [LinkTypeChoice1]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { LinkTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
		self.choice1 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { LinkTypeChoice1(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**
			This element allows for connecting components, such as rigid_body into complex physics models 
			with moveable parts.
			*/
final class RigidConstraintType : ColladaType {
	/**
					The sid attribute is a text string value containing the sub-identifier of this element. 
					This value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?
	/**
*/
final class RefAttachment : ColladaType {
	/**
								The "rigid_body" attribute is a relative reference to a rigid-body within the same 
								physics_model.
								*/
	let rigidBody: String?

	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]

	enum RefAttachmentChoice0 {
		/**
										Allows you to "position" the attachment point.
										*/
		case translate(TranslateType)
		/**
										Allows you to "position" the attachment point.
										*/
		case rotate(RotateType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "translate" {	self = .translate(TranslateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "translate").first {
	self = .translate(TranslateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "rotate" {	self = .rotate(RotateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "rotate").first {
	self = .rotate(RotateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [RefAttachmentChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "rigid_body") {
			self.rigidBody = String(attribute.stringValue!)
		} else { self.rigidBody = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { RefAttachmentChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
	/**
						Defines the attachment (to a rigid_body or a node) to be used as the reference-frame.
						*/
	let refAttachment: RefAttachment

	/**
*/
final class Attachment : ColladaType {
	/**
								The "rigid_body" attribute is a relative reference to a rigid-body within the same physics_model.
								*/
	let rigidBody: String?

	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]

	enum AttachmentChoice0 {
		/**
										Allows you to "position" the attachment point.
										*/
		case translate(TranslateType)
		/**
										Allows you to "position" the attachment point.
										*/
		case rotate(RotateType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "translate" {	self = .translate(TranslateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "translate").first {
	self = .translate(TranslateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "rotate" {	self = .rotate(RotateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "rotate").first {
	self = .rotate(RotateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [AttachmentChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "rigid_body") {
			self.rigidBody = String(attribute.stringValue!)
		} else { self.rigidBody = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { AttachmentChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
	/**
						Defines an attachment to a rigid-body or a node.
						*/
	let attachment: Attachment

	/**
*/
final class TechniqueCommon : ColladaType {

	/**
*/
final class Enabled : ColladaType {



	let data: Bool

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/**
									If false, the constraint doesn't exert any force or influence on the rigid bodies.
									*/
	let enabled: Enabled?

	/**
*/
final class Interpenetrate : ColladaType {



	let data: Bool

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/**
									Indicates whether the attached rigid bodies may inter-penetrate.
									*/
	let interpenetrate: Interpenetrate?

	/**
*/
final class Limits : ColladaType {

	/**
*/
final class SwingConeAndTwist : ColladaType {


	/**
															The minimum values for the limit.
															*/
	let min: TargetableFloat3Type?


	/**
															The maximum values for the limit.
															*/
	let max: TargetableFloat3Type?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "min").first {
			self.min = TargetableFloat3Type(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.min = nil }
		if let childElement = xmlElement.elements(forName: "max").first {
			self.max = TargetableFloat3Type(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.max = nil }
	}

}
	/**
												The swing_cone_and_twist element describes the angular limits along each rotation axis in degrees.
												The the X and Y limits describe a "swing cone" and the Z limits describe the "twist angle" range 
												*/
	let swingConeAndTwist: SwingConeAndTwist?

	/**
*/
final class Linear : ColladaType {


	/**
															The minimum values for the limit.
															*/
	let min: TargetableFloat3Type?


	/**
															The maximum values for the limit.
															*/
	let max: TargetableFloat3Type?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "min").first {
			self.min = TargetableFloat3Type(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.min = nil }
		if let childElement = xmlElement.elements(forName: "max").first {
			self.max = TargetableFloat3Type(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.max = nil }
	}

}
	/**
												The linear element describes linear (translational) limits along each axis.
												*/
	let linear: Linear?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "swing_cone_and_twist").first {
			self.swingConeAndTwist = SwingConeAndTwist(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.swingConeAndTwist = nil }
		if let childElement = xmlElement.elements(forName: "linear").first {
			self.linear = Linear(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.linear = nil }
	}

}
	/**
									The limits element provides a flexible way to specify the constraint limits (degrees of freedom 
									and ranges).
									*/
	let limits: Limits?

	/**
*/
final class Spring : ColladaType {

	/**
*/
final class Angular : ColladaType {


	/**
															The stiffness (also called spring coefficient) has units of force/angle in degrees. 
															*/
	let stiffness: TargetableFloatType?


	/**
															The spring damping coefficient.
															*/
	let damping: TargetableFloatType?


	/**
															The spring's target or resting distance.
															*/
	let targetValue: TargetableFloatType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "stiffness").first {
			self.stiffness = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.stiffness = nil }
		if let childElement = xmlElement.elements(forName: "damping").first {
			self.damping = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.damping = nil }
		if let childElement = xmlElement.elements(forName: "target_value").first {
			self.targetValue = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.targetValue = nil }
	}

}
	/**
												The angular spring properties.
												*/
	let angular: Angular?

	/**
*/
final class Linear : ColladaType {


	/**
															The stiffness (also called spring coefficient) has units of force/distance. 
															*/
	let stiffness: TargetableFloatType?


	/**
															The spring damping coefficient.
															*/
	let damping: TargetableFloatType?


	/**
															The spring's target or resting distance.
															*/
	let targetValue: TargetableFloatType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "stiffness").first {
			self.stiffness = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.stiffness = nil }
		if let childElement = xmlElement.elements(forName: "damping").first {
			self.damping = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.damping = nil }
		if let childElement = xmlElement.elements(forName: "target_value").first {
			self.targetValue = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.targetValue = nil }
	}

}
	/**
												The linear spring properties.
												*/
	let linear: Linear?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "angular").first {
			self.angular = Angular(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.angular = nil }
		if let childElement = xmlElement.elements(forName: "linear").first {
			self.linear = Linear(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.linear = nil }
	}

}
	/**
									Spring, based on distance ("LINEAR") or angle ("ANGULAR"). 
									*/
	let spring: Spring?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "enabled").first {
			self.enabled = Enabled(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.enabled = nil }
		if let childElement = xmlElement.elements(forName: "interpenetrate").first {
			self.interpenetrate = Interpenetrate(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.interpenetrate = nil }
		if let childElement = xmlElement.elements(forName: "limits").first {
			self.limits = Limits(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.limits = nil }
		if let childElement = xmlElement.elements(forName: "spring").first {
			self.spring = Spring(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.spring = nil }
	}

}
	/**
						The technique_common element specifies the rigid_constraint information for the common profile 
						which all COLLADA implementations need to support.
						*/
	let techniqueCommon: TechniqueCommon


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.refAttachment = RefAttachment(xmlElement: xmlElement.elements(forName: "ref_attachment").first!, sourcesToObjects: &sourcesToObjects)
		self.attachment = Attachment(xmlElement: xmlElement.elements(forName: "attachment").first!, sourcesToObjects: &sourcesToObjects)
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			Nodes embody the hierarchical relationship of elements in the scene.
			*/
final class NodeType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. 
					This value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The type attribute indicates the type of the node element. The default value is "NODE". 
					Optional attribute.
					*/
	let type: NodeEnum?

	/**
					The layer attribute indicates the names of the layers to which this node belongs.  For example, 
					a value of "foreground glowing" indicates that this node belongs to both the 'foreground' layer 
					and the 'glowing' layer.  The default value is empty, indicating that the node doesn't belong to 
					any layer.  Optional attribute.
					*/
	let layer: ListOfNamesType?

	/**
						The node element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The node element may instance any number of camera objects.
						*/
	let instanceCamera: [InstanceCameraType]


	/**
						The node element may instance any number of controller objects.
						*/
	let instanceController: [InstanceControllerType]


	/**
						The node element may instance any number of geometry objects.
						*/
	let instanceGeometry: [InstanceGeometryType]


	/**
						The node element may instance any number of light objects.
						*/
	let instanceLight: [InstanceLightType]


	/**
						The node element may instance any number of node elements or hierarchies objects.
						*/
	let instanceNode: [InstanceNodeType]


	/**
						The node element may be hierarchical and be the parent of any number of other node elements.
						*/
	let node: [NodeType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]

	enum NodeTypeChoice0 {
		/**
							The node element may contain any number of lookat elements.
							*/
		case lookat(LookatType)
		/**
							The node element may contain any number of matrix elements.
							*/
		case matrix(MatrixType)
		/**
							The node element may contain any number of rotate elements.
							*/
		case rotate(RotateType)
		/**
							The node element may contain any number of scale elements.
							*/
		case scale(ScaleType)
		/**
							The node element may contain any number of skew elements.
							*/
		case skew(SkewType)
		/**
							The node element may contain any number of translate elements.
							*/
		case translate(TranslateType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "lookat" {	self = .lookat(LookatType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "lookat").first {
	self = .lookat(LookatType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "matrix" {	self = .matrix(MatrixType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "matrix").first {
	self = .matrix(MatrixType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "rotate" {	self = .rotate(RotateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "rotate").first {
	self = .rotate(RotateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "scale" {	self = .scale(ScaleType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "scale").first {
	self = .scale(ScaleType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "skew" {	self = .skew(SkewType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "skew").first {
	self = .skew(SkewType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "translate" {	self = .translate(TranslateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "translate").first {
	self = .translate(TranslateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [NodeTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "type") {
			self.type = NodeEnum(attribute.stringValue!)
		} else { self.type = nil }
		if let attribute = xmlElement.attribute(forName: "layer") {
			self.layer = ListOfNamesType(attribute.stringValue!)!
		} else { self.layer = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.instanceCamera = xmlElement.elements(forName: "instance_camera").map { InstanceCameraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceController = xmlElement.elements(forName: "instance_controller").map { InstanceControllerType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceGeometry = xmlElement.elements(forName: "instance_geometry").map { InstanceGeometryType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceLight = xmlElement.elements(forName: "instance_light").map { InstanceLightType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceNode = xmlElement.elements(forName: "instance_node").map { InstanceNodeType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.node = xmlElement.elements(forName: "node").map { NodeType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { NodeTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_nodes element declares a module of node elements.
			*/
final class LibraryNodesType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_nodes element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one node element.
						*/
	let node: [NodeType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.node = xmlElement.elements(forName: "node").map { NodeType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The visual_scene element declares the base of the visual_scene hierarchy or scene graph. The 
			scene contains elements that comprise much of the visual and transformational information 
			content as created by the authoring tools.
			*/
final class VisualSceneType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. This 
					value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The visual_scene element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The visual_scene element must have at least one node element.
						*/
	let node: [NodeType]

	/**
*/
final class EvaluateScene : ColladaType {
	/***/
	let id: String?

	/***/
	let sid: SidType?

	/***/
	let name: String?

	/**allow this to be disabled and hense skipped durring evaluation.  This is useful for debug.*/
	let enable: Bool?

	/***/
	let asset: AssetType?

	/**
*/
final class Render : ColladaType {
	/***/
	let sid: SidType?

	/**
								The name attribute is the text string name of this element. Optional attribute.
								*/
	let name: String?

	/**The camera_node attribute refers to a node that contains a camera describing the viewpoint to render this compositing step from.						*/
	let cameraNode: String?

	/**The layer element specifies which layer to render in this compositing step while evaluating the scene. You may specify any number of layers.  No layers mans that the entire scene will be used.		*/
	let layer: [String]

	/**
*/
final class InstanceMaterial : ColladaType {
	/**URL to a material		*/
	let url: String
	/**
*/
final class TechniqueOverride : ColladaType {
	/**technique*/
	let ref: String

	/**Explicitly select one pass.  If empty then use all passes of the technique.*/
	let pass: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "pass") {
			self.pass = String(attribute.stringValue!)
		} else { self.pass = nil }
	}

}
	/***/
	let techniqueOverride: TechniqueOverride?

	/**
*/
final class Bind : ColladaType {
	/**
								The semantic attribute specifies which effect parameter to bind.
								*/
	let semantic: String

	/**
								The target attribute specifies the location of the value to bind to the specified semantic. 
								This text string is a path-name following a simple syntax described in the ?Addressing Syntax? 
								section.
								*/
	let target: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
	}

}
	/**
						The bind element binds values to effect parameters upon instantiation.
						*/
	let bind: [Bind]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "technique_override").first {
			self.techniqueOverride = TechniqueOverride(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.techniqueOverride = nil }
		self.bind = xmlElement.elements(forName: "bind").map { Bind(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**The instance_material element specifies which effect to render in this compositing step 
												while evaluating the scene.
												*/
	let instanceMaterial: InstanceMaterial?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "camera_node") {
			self.cameraNode = String(attribute.stringValue!)
		} else { self.cameraNode = nil }
		self.layer = xmlElement.elements(forName: "layer").map { String($0) }
		if let childElement = xmlElement.elements(forName: "instance_material").first {
			self.instanceMaterial = InstanceMaterial(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.instanceMaterial = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
	/**
									The render element describes one effect pass to evaluate the scene.
									There must be at least one render element.
									*/
	let render: [Render]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "enable") {
			self.enable = Bool(attribute.stringValue!)!
		} else { self.enable = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.render = xmlElement.elements(forName: "render").map { Render(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
	/**The evaluate_scene element declares information specifying how to evaluate this visual_scene. There may be any number of evaluate_scene elements.  They are evaluated in order and particular one may be disabled via setting enabled=false.
						*/
	let evaluateScene: [EvaluateScene]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.node = xmlElement.elements(forName: "node").map { NodeType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.evaluateScene = xmlElement.elements(forName: "evaluate_scene").map { EvaluateScene(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_visual_scenes element declares a module of visual_scene elements.
			*/
final class LibraryVisualScenesType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_visual_scenes element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one visual_scene element.
						*/
	let visualScene: [VisualSceneType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.visualScene = xmlElement.elements(forName: "visual_scene").map { VisualSceneType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			This element allows for describing simulated bodies that do not deform. These bodies may or may 
			not be connected by constraints (hinge, ball-joint etc.).  Rigid-bodies, constraints etc. are 
			encapsulated in physics_model elements to allow for instantiating complex models.
			*/
final class RigidBodyType : ColladaType {
	/***/
	let id: String?

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?
	/**
*/
final class TechniqueCommon : ColladaType {

	/**
*/
final class Dynamic : ColladaType {



	let data: Bool

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/**
									If false, the rigid_body is not moveable
									*/
	let dynamic: Dynamic?


	/**
									The total mass of the rigid-body
									*/
	let mass: TargetableFloatType?

	/**
*/
final class MassFrame : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/**
									Defines the center and orientation of mass of the rigid-body relative to the local origin of the 
									"root" shape.This makes the off-diagonal elements of the inertia tensor (products of inertia) all 
									0 and allows us to just store the diagonal elements (moments of inertia).
									*/
	let massFrame: MassFrame?


	/**
									float3 - The diagonal elements of the inertia tensor (moments of inertia), which is represented 
									in the local frame of the center of mass. See above.
									*/
	let inertia: TargetableFloat3Type?

	/**
*/
final class Shape : ColladaType {

	/**
*/
final class Hollow : ColladaType {



	let data: Bool

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/**
												If true, the mass is distributed along the surface of the shape
												*/
	let hollow: Hollow?


	/**
												The mass of the shape.
												*/
	let mass: TargetableFloatType?


	/**
												The density of the shape.
												*/
	let density: TargetableFloatType?


	/**
												The extra element may appear any number of times.
												*/
	let extra: [ExtraType]

	enum ShapeChoice0 {
		/**
													References a physics_material for the shape.
													*/
		case instancePhysicsMaterial(InstancePhysicsMaterialType)
		/**
													Defines a physics_material for the shape.
													*/
		case physicsMaterial(PhysicsMaterialType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "instance_physics_material" {	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_physics_material").first {
	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "physics_material" {	self = .physicsMaterial(PhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "physics_material").first {
	self = .physicsMaterial(PhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: ShapeChoice0?


	enum ShapeChoice1 {
		/**
													Instances a geometry to use to define this shape.
													*/
		case instanceGeometry(InstanceGeometryType)
		/**
													Defines a plane to use for this shape.
													*/
		case plane(PlaneType)
		/**
													Defines a box to use for this shape.
													*/
		case box(BoxType)
		/**
													Defines a sphere to use for this shape.
													*/
		case sphere(SphereType)
		/**
													Defines a cyliner to use for this shape.
													*/
		case cylinder(CylinderType)
		/**
													Defines a capsule to use for this shape.
													*/
		case capsule(CapsuleType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "instance_geometry" {	self = .instanceGeometry(InstanceGeometryType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_geometry").first {
	self = .instanceGeometry(InstanceGeometryType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "plane" {	self = .plane(PlaneType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "plane").first {
	self = .plane(PlaneType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "box" {	self = .box(BoxType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "box").first {
	self = .box(BoxType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "sphere" {	self = .sphere(SphereType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "sphere").first {
	self = .sphere(SphereType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "cylinder" {	self = .cylinder(CylinderType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "cylinder").first {
	self = .cylinder(CylinderType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "capsule" {	self = .capsule(CapsuleType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "capsule").first {
	self = .capsule(CapsuleType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice1: ShapeChoice1


	enum ShapeChoice2 {
		/**
													Allows a tranformation for the shape.
													*/
		case translate(TranslateType)
		/**
													Allows a tranformation for the shape.
													*/
		case rotate(RotateType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "translate" {	self = .translate(TranslateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "translate").first {
	self = .translate(TranslateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "rotate" {	self = .rotate(RotateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "rotate").first {
	self = .rotate(RotateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice2: [ShapeChoice2]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "hollow").first {
			self.hollow = Hollow(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.hollow = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "density").first {
			self.density = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.density = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = ShapeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)
		self.choice1 = ShapeChoice1(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		self.choice2 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { ShapeChoice2(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
	/**
									This element allows for describing components of a rigid_body.
									*/
	let shape: [Shape]

	enum TechniqueCommonChoice0 {
		/**
										References a physics_material for the rigid_body.
										*/
		case instancePhysicsMaterial(InstancePhysicsMaterialType)
		/**
										Defines a physics_material for the rigid_body.
										*/
		case physicsMaterial(PhysicsMaterialType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "instance_physics_material" {	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_physics_material").first {
	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "physics_material" {	self = .physicsMaterial(PhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "physics_material").first {
	self = .physicsMaterial(PhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: TechniqueCommonChoice0?


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "dynamic").first {
			self.dynamic = Dynamic(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.dynamic = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "mass_frame").first {
			self.massFrame = MassFrame(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.massFrame = nil }
		if let childElement = xmlElement.elements(forName: "inertia").first {
			self.inertia = TargetableFloat3Type(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.inertia = nil }
		self.shape = xmlElement.elements(forName: "shape").map { Shape(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = TechniqueCommonChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)
	}

}
	/**
						The technique_common element specifies the rigid_body information for the common profile which all 
						COLLADA implementations need to support.
						*/
	let techniqueCommon: TechniqueCommon


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			This element allows instancing a rigid_body within an instance_physics_model. 
			*/
final class InstanceRigidBodyType : ColladaType {
	/**
					The body attribute indicates which rigid_body to instantiate. Required attribute.
					*/
	let body: String

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The target attribute indicates which node is influenced by this rigid_body instance. 
					Required attribute
					*/
	let target: String
	/**
*/
final class TechniqueCommon : ColladaType {


	/**
									Specifies the initial angular velocity of the rigid_body instance in degrees per second 
									around each axis, in the form of an X-Y-Z Euler rotation.
									*/
	let angularVelocity: Float3Type?


	/**
									Specifies the initial linear velocity of the rigid_body instance.
									*/
	let velocity: Float3Type?

	/**
*/
final class Dynamic : ColladaType {



	let data: Bool

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/***/
	let dynamic: Dynamic?


	/***/
	let mass: TargetableFloatType?

	/**
*/
final class MassFrame : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
	/***/
	let massFrame: MassFrame?


	/***/
	let inertia: TargetableFloat3Type?

	/**
*/
final class Shape : ColladaType {

	/**
*/
final class Hollow : ColladaType {



	let data: Bool

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/***/
	let hollow: Hollow?


	/***/
	let mass: TargetableFloatType?


	/***/
	let density: TargetableFloatType?


	/**
												The extra element may appear any number of times.
												*/
	let extra: [ExtraType]

	enum ShapeChoice0 {
		/***/
		case instancePhysicsMaterial(InstancePhysicsMaterialType)
		/***/
		case physicsMaterial(PhysicsMaterialType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "instance_physics_material" {	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_physics_material").first {
	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "physics_material" {	self = .physicsMaterial(PhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "physics_material").first {
	self = .physicsMaterial(PhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: ShapeChoice0?


	enum ShapeChoice1 {
		/***/
		case instanceGeometry(InstanceGeometryType)
		/***/
		case plane(PlaneType)
		/***/
		case box(BoxType)
		/***/
		case sphere(SphereType)
		/***/
		case cylinder(CylinderType)
		/***/
		case capsule(CapsuleType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "instance_geometry" {	self = .instanceGeometry(InstanceGeometryType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_geometry").first {
	self = .instanceGeometry(InstanceGeometryType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "plane" {	self = .plane(PlaneType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "plane").first {
	self = .plane(PlaneType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "box" {	self = .box(BoxType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "box").first {
	self = .box(BoxType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "sphere" {	self = .sphere(SphereType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "sphere").first {
	self = .sphere(SphereType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "cylinder" {	self = .cylinder(CylinderType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "cylinder").first {
	self = .cylinder(CylinderType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "capsule" {	self = .capsule(CapsuleType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "capsule").first {
	self = .capsule(CapsuleType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice1: ShapeChoice1


	enum ShapeChoice2 {
		/***/
		case translate(TranslateType)
		/***/
		case rotate(RotateType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "translate" {	self = .translate(TranslateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "translate").first {
	self = .translate(TranslateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "rotate" {	self = .rotate(RotateType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "rotate").first {
	self = .rotate(RotateType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice2: [ShapeChoice2]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "hollow").first {
			self.hollow = Hollow(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.hollow = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "density").first {
			self.density = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.density = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = ShapeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)
		self.choice1 = ShapeChoice1(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		self.choice2 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { ShapeChoice2(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
	/***/
	let shape: [Shape]

	enum TechniqueCommonChoice0 {
		/***/
		case instancePhysicsMaterial(InstancePhysicsMaterialType)
		/***/
		case physicsMaterial(PhysicsMaterialType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "instance_physics_material" {	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_physics_material").first {
	self = .instancePhysicsMaterial(InstancePhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "physics_material" {	self = .physicsMaterial(PhysicsMaterialType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "physics_material").first {
	self = .physicsMaterial(PhysicsMaterialType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: TechniqueCommonChoice0?


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "angular_velocity").first {
			self.angularVelocity = Float3Type(childElement.stringValue!)!
		} else { self.angularVelocity = nil }
		if let childElement = xmlElement.elements(forName: "velocity").first {
			self.velocity = Float3Type(childElement.stringValue!)!
		} else { self.velocity = nil }
		if let childElement = xmlElement.elements(forName: "dynamic").first {
			self.dynamic = Dynamic(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.dynamic = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "mass_frame").first {
			self.massFrame = MassFrame(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.massFrame = nil }
		if let childElement = xmlElement.elements(forName: "inertia").first {
			self.inertia = TargetableFloat3Type(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.inertia = nil }
		self.shape = xmlElement.elements(forName: "shape").map { Shape(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = TechniqueCommonChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)
	}

}
	/**
						The technique_common element specifies the instance_rigid_body information for the common 
						profile which all COLLADA implementations need to support.
						*/
	let techniqueCommon: TechniqueCommon


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.body = String(xmlElement.attribute(forName: "body")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			This element allows instancing physics model within another physics model, or in a physics scene.
			*/
final class InstancePhysicsModelType : ColladaType {
	/**
					The url attribute refers to resource.  This may refer to a local resource using a relative URL 
					fragment identifier that begins with the "#" character. The url attribute may refer to an external 
					resource using an absolute or relative URL.
					*/
	let url: String

	/**
					The sid attribute is a text string value containing the sub-identifier of this element. This 
					value must be unique within the scope of the parent element. Optional attribute.
					*/
	let sid: SidType?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The parent attribute points to the id of a node in the visual scene. This allows a physics model 
					to be instantiated under a specific transform node, which will dictate the initial position and 
					orientation, and could be animated to influence kinematic rigid bodies.
					*/
	let parent: String?

	/**
						The instance_physics_model element may instance any number of force_field elements.
						*/
	let instanceForceField: [InstanceForceFieldType]


	/**
						The instance_physics_model element may instance any number of rigid_body elements.
						*/
	let instanceRigidBody: [InstanceRigidBodyType]


	/**
						The instance_physics_model element may instance any number of rigid_constraint elements.
						*/
	let instanceRigidConstraint: [InstanceRigidConstraintType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "parent") {
			self.parent = String(attribute.stringValue!)
		} else { self.parent = nil }
		self.instanceForceField = xmlElement.elements(forName: "instance_force_field").map { InstanceForceFieldType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceRigidBody = xmlElement.elements(forName: "instance_rigid_body").map { InstanceRigidBodyType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceRigidConstraint = xmlElement.elements(forName: "instance_rigid_constraint").map { InstanceRigidConstraintType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			This element allows for building complex combinations of rigid-bodies and constraints that 
			may be instantiated multiple times.
			*/
final class PhysicsModelType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The physics_model element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The physics_model may define any number of rigid_body elements.
						*/
	let rigidBody: [RigidBodyType]


	/**
						The physics_model may define any number of rigid_constraint elements.
						*/
	let rigidConstraint: [RigidConstraintType]


	/**
						The physics_model may instance any number of other physics_model elements.
						*/
	let instancePhysicsModel: [InstancePhysicsModelType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.rigidBody = xmlElement.elements(forName: "rigid_body").map { RigidBodyType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.rigidConstraint = xmlElement.elements(forName: "rigid_constraint").map { RigidConstraintType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instancePhysicsModel = xmlElement.elements(forName: "instance_physics_model").map { InstancePhysicsModelType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_physics_models element declares a module of physics_model elements.
			*/
final class LibraryPhysicsModelsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_physics_models element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one physics_model element.
						*/
	let physicsModel: [PhysicsModelType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.physicsModel = xmlElement.elements(forName: "physics_model").map { PhysicsModelType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class PhysicsSceneType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The physics_scene element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There may be any number of instance_force_field elements.
						*/
	let instanceForceField: [InstanceForceFieldType]


	/**
						There may be any number of instance_physics_model elements.
						*/
	let instancePhysicsModel: [InstancePhysicsModelType]

	/**
*/
final class TechniqueCommon : ColladaType {


	/**
									The gravity vector to use for the physics_scene.
									*/
	let gravity: TargetableFloat3Type?


	/**
									The time_step for the physics_scene.
									*/
	let timeStep: TargetableFloatType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "gravity").first {
			self.gravity = TargetableFloat3Type(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.gravity = nil }
		if let childElement = xmlElement.elements(forName: "time_step").first {
			self.timeStep = TargetableFloatType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.timeStep = nil }
	}

}
	/**
						The technique_common element specifies the physics_scene information for the common profile 
						which all COLLADA implementations need to support.
						*/
	let techniqueCommon: TechniqueCommon


	/**
						This element may contain any number of non-common profile techniques.
						*/
	let technique: [TechniqueType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.instanceForceField = xmlElement.elements(forName: "instance_force_field").map { InstanceForceFieldType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instancePhysicsModel = xmlElement.elements(forName: "instance_physics_model").map { InstancePhysicsModelType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_physics_scenes element declares a module of physics_scene elements.
			*/
final class LibraryPhysicsScenesType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_physics_scenes element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one physics_scene element.
						*/
	let physicsScene: [PhysicsSceneType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.physicsScene = xmlElement.elements(forName: "physics_scene").map { PhysicsSceneType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class KinematicsNewparamType : ColladaType {
	/***/
	let sid: SidType?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
	}

}
/**
*/
final class KinematicsFrameType : ColladaType {
	/***/
	let link: String?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "link") {
			self.link = String(attribute.stringValue!)
		} else { self.link = nil }
	}

}
/**
*/
final class CommonParamType : ColladaType {



	let data: String

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
*/
final class CommonIntOrParamType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class CommonBoolOrParamType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class CommonFloatOrParamType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class KinematicsLimitsType : ColladaType {


	/***/
	let min: CommonFloatOrParamType


	/***/
	let max: CommonFloatOrParamType



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.min = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "min").first!, sourcesToObjects: &sourcesToObjects)
		self.max = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "max").first!, sourcesToObjects: &sourcesToObjects)
	}

}
/**
*/
final class CommonSidrefOrParamType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class BindJointAxisType : ColladaType {
	/***/
	let target: String?

	/***/
	let axis: CommonSidrefOrParamType


	/***/
	let value: CommonFloatOrParamType



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "target") {
			self.target = String(attribute.stringValue!)
		} else { self.target = nil }
		self.axis = CommonSidrefOrParamType(xmlElement: xmlElement.elements(forName: "axis").first!, sourcesToObjects: &sourcesToObjects)
		self.value = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "value").first!, sourcesToObjects: &sourcesToObjects)
	}

}
/**
*/
final class BindKinematicsModelType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class KinematicsConnectParamType : ColladaType {
	/***/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
final class KinematicsSetparamType : ColladaType {
	/***/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
final class InstanceKinematicsSceneType : ColladaType {
	/***/
	let url: String

	/***/
	let sid: SidType?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let setparam: [KinematicsSetparamType]


	/***/
	let bindKinematicsModel: [BindKinematicsModelType]


	/***/
	let bindJointAxis: [BindJointAxisType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindKinematicsModel = xmlElement.elements(forName: "bind_kinematics_model").map { BindKinematicsModelType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.bindJointAxis = xmlElement.elements(forName: "bind_joint_axis").map { BindJointAxisType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class KinematicsIndexType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class KinematicsParamType : ColladaType {
	/***/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
final class KinematicsBindType : ColladaType {
	/***/
	let symbol: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
/**
*/
final class MotionAxisInfoType : ColladaType {
	/***/
	let sid: SidType?

	/***/
	let axis: String

	/***/
	let name: String?

	/***/
	let bind: [KinematicsBindType]


	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let setparam: [KinematicsSetparamType]


	/***/
	let speed: CommonFloatOrParamType?


	/***/
	let acceleration: CommonFloatOrParamType?


	/***/
	let deceleration: CommonFloatOrParamType?


	/***/
	let jerk: CommonFloatOrParamType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.axis = String(xmlElement.attribute(forName: "axis")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "speed").first {
			self.speed = CommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.speed = nil }
		if let childElement = xmlElement.elements(forName: "acceleration").first {
			self.acceleration = CommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.acceleration = nil }
		if let childElement = xmlElement.elements(forName: "deceleration").first {
			self.deceleration = CommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.deceleration = nil }
		if let childElement = xmlElement.elements(forName: "jerk").first {
			self.jerk = CommonFloatOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.jerk = nil }
	}

}
/**
*/
final class InstanceKinematicsModelType : ColladaType {
	/***/
	let url: String

	/***/
	let sid: SidType?

	/***/
	let name: String?

	/***/
	let bind: [KinematicsBindType]


	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let setparam: [KinematicsSetparamType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class InstanceArticulatedSystemType : ColladaType {
	/***/
	let sid: SidType?

	/***/
	let url: String

	/***/
	let name: String?

	/***/
	let bind: [KinematicsBindType]


	/***/
	let setparam: [KinematicsSetparamType]


	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class KinematicsSceneType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let instanceKinematicsModel: [InstanceKinematicsModelType]


	/***/
	let instanceArticulatedSystem: [InstanceArticulatedSystemType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.instanceKinematicsModel = xmlElement.elements(forName: "instance_kinematics_model").map { InstanceKinematicsModelType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceArticulatedSystem = xmlElement.elements(forName: "instance_articulated_system").map { InstanceArticulatedSystemType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class LibraryKinematicsScenesType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let kinematicsScene: [KinematicsSceneType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.kinematicsScene = xmlElement.elements(forName: "kinematics_scene").map { KinematicsSceneType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class CommonFloat2OrParamType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class MotionEffectorInfoType : ColladaType {
	/***/
	let sid: SidType?

	/***/
	let name: String?

	/***/
	let bind: [KinematicsBindType]


	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let setparam: [KinematicsSetparamType]


	/***/
	let speed: CommonFloat2OrParamType?


	/***/
	let acceleration: CommonFloat2OrParamType?


	/***/
	let deceleration: CommonFloat2OrParamType?


	/***/
	let jerk: CommonFloat2OrParamType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "speed").first {
			self.speed = CommonFloat2OrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.speed = nil }
		if let childElement = xmlElement.elements(forName: "acceleration").first {
			self.acceleration = CommonFloat2OrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.acceleration = nil }
		if let childElement = xmlElement.elements(forName: "deceleration").first {
			self.deceleration = CommonFloat2OrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.deceleration = nil }
		if let childElement = xmlElement.elements(forName: "jerk").first {
			self.jerk = CommonFloat2OrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.jerk = nil }
	}

}
/**
*/
final class MotionTechniqueType : ColladaType {


	/***/
	let axisInfo: [MotionAxisInfoType]


	/***/
	let effectorInfo: MotionEffectorInfoType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.axisInfo = xmlElement.elements(forName: "axis_info").map { MotionAxisInfoType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "effector_info").first {
			self.effectorInfo = MotionEffectorInfoType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.effectorInfo = nil }
	}

}
/**
*/
final class MotionType : ColladaType {


	/***/
	let instanceArticulatedSystem: InstanceArticulatedSystemType


	/***/
	let techniqueCommon: MotionTechniqueType


	/***/
	let technique: [TechniqueType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.instanceArticulatedSystem = InstanceArticulatedSystemType(xmlElement: xmlElement.elements(forName: "instance_articulated_system").first!, sourcesToObjects: &sourcesToObjects)
		self.techniqueCommon = MotionTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class MinmaxType : ColladaType {



	let data: FloatType

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
*/
final class JointLimitsType : ColladaType {


	/***/
	let min: MinmaxType?


	/***/
	let max: MinmaxType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let childElement = xmlElement.elements(forName: "min").first {
			self.min = MinmaxType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.min = nil }
		if let childElement = xmlElement.elements(forName: "max").first {
			self.max = MinmaxType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.max = nil }
	}

}
/**
*/
final class AxisType : ColladaType {



	let data: Float3Type

	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.data = Float3Type(xmlElement.stringValue!)!
	}

}
/**
*/
final class AxisConstraintType : ColladaType {
	/***/
	let sid: SidType?

	/***/
	let axis: AxisType


	/***/
	let limits: JointLimitsType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.axis = AxisType(xmlElement: xmlElement.elements(forName: "axis").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "limits").first {
			self.limits = JointLimitsType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.limits = nil }
	}

}
/**
*/
final class JointType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let sid: SidType?

	/***/
	let extra: [ExtraType]

	enum JointTypeChoice0 {
		/***/
		case prismatic(AxisConstraintType)
		/***/
		case revolute(AxisConstraintType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "prismatic" {	self = .prismatic(AxisConstraintType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "prismatic").first {
	self = .prismatic(AxisConstraintType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "revolute" {	self = .revolute(AxisConstraintType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "revolute").first {
	self = .revolute(AxisConstraintType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [JointTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { JointTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class LibraryJointsType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let joint: [JointType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.joint = xmlElement.elements(forName: "joint").map { JointType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class FormulaTechniqueType : ColladaType {





	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
	}

}
/**
*/
final class FormulaNewparamType : ColladaType {
	/***/
	let sid: SidType?




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
	}

}
/**
*/
final class FormulaSetparamType : ColladaType {
	/***/
	let ref: String




	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
final class InstanceFormulaType : ColladaType {
	/***/
	let sid: SidType?

	/***/
	let name: String?

	/***/
	let url: String?

	/***/
	let setparam: [FormulaSetparamType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "url") {
			self.url = String(attribute.stringValue!)
		} else { self.url = nil }
		self.setparam = xmlElement.elements(forName: "setparam").map { FormulaSetparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
			The animation_clip element defines a section of the animation curves to be used together as 
			an animation clip.
			*/
final class AnimationClipType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
					The start attribute is the time in seconds of the beginning of the clip.  This time is 
					the same as that used in the key-frame data and is used to determine which set of 
					key-frames will be included in the clip.  The start time does not specify when the clip 
					will be played.  If the time falls between two keyframes of a referenced animation, an 
					interpolated value should be used.  The default value is 0.0.  Optional attribute.
					*/
	let start: FloatType?

	/**
					The end attribute is the time in seconds of the end of the clip.  This is used in the 
					same way as the start time.  If end is not specified, the value is taken to be the end 
					time of the longest animation.  Optional attribute.
					*/
	let end: FloatType?

	/**
						The animation_clip element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						The animation_clip must instance at least one animation element.
						*/
	let instanceAnimation: [InstanceWithExtraType]


	/***/
	let instanceFormula: [InstanceFormulaType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "start") {
			self.start = FloatType(attribute.stringValue!)!
		} else { self.start = nil }
		if let attribute = xmlElement.attribute(forName: "end") {
			self.end = FloatType(attribute.stringValue!)!
		} else { self.end = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.instanceAnimation = xmlElement.elements(forName: "instance_animation").map { InstanceWithExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.instanceFormula = xmlElement.elements(forName: "instance_formula").map { InstanceFormulaType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
			The library_animation_clips element declares a module of animation_clip elements.
			*/
final class LibraryAnimationClipsType : ColladaType {
	/**
					The id attribute is a text string containing the unique identifier of this element. 
					This value must be unique within the instance document. Optional attribute.
					*/
	let id: String?

	/**
					The name attribute is the text string name of this element. Optional attribute.
					*/
	let name: String?

	/**
						The library_animation_clips element may contain an asset element.
						*/
	let asset: AssetType?


	/**
						There must be at least one animation_clip element.
						*/
	let animationClip: [AnimationClipType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.animationClip = xmlElement.elements(forName: "animation_clip").map { AnimationClipType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class FormulaType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let sid: SidType?

	/***/
	let newparam: [FormulaNewparamType]


	/***/
	let target: CommonFloatOrParamType


	/***/
	let techniqueCommon: FormulaTechniqueType


	/***/
	let technique: [TechniqueType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { FormulaNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.target = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "target").first!, sourcesToObjects: &sourcesToObjects)
		self.techniqueCommon = FormulaTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class KinematicsModelTechniqueType : ColladaType {


	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let link: [LinkType]

	enum KinematicsModelTechniqueTypeChoice0 {
		/***/
		case instanceJoint(InstanceJointType)
		/***/
		case joint(JointType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "instance_joint" {	self = .instanceJoint(InstanceJointType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_joint").first {
	self = .instanceJoint(InstanceJointType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "joint" {	self = .joint(JointType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "joint").first {
	self = .joint(JointType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [KinematicsModelTechniqueTypeChoice0]


	enum KinematicsModelTechniqueTypeChoice1 {
		/***/
		case formula(FormulaType)
		/***/
		case instanceFormula(InstanceFormulaType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "formula" {	self = .formula(FormulaType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "formula").first {
	self = .formula(FormulaType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "instance_formula" {	self = .instanceFormula(InstanceFormulaType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_formula").first {
	self = .instanceFormula(InstanceFormulaType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice1: [KinematicsModelTechniqueTypeChoice1]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.link = xmlElement.elements(forName: "link").map { LinkType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { KinematicsModelTechniqueTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
		self.choice1 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { KinematicsModelTechniqueTypeChoice1(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**
*/
final class KinematicsModelType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let techniqueCommon: KinematicsModelTechniqueType


	/***/
	let technique: [TechniqueType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.techniqueCommon = KinematicsModelTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class LibraryKinematicsModelsType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let kinematicsModel: [KinematicsModelType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.kinematicsModel = xmlElement.elements(forName: "kinematics_model").map { KinematicsModelType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class KinematicsAxisInfoType : ColladaType {
	/***/
	let sid: SidType?

	/***/
	let name: String?

	/***/
	let axis: String

	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let active: CommonBoolOrParamType?


	/***/
	let locked: CommonBoolOrParamType?


	/***/
	let index: [KinematicsIndexType]


	/***/
	let limits: KinematicsLimitsType?

	enum KinematicsAxisInfoTypeChoice0 {
		/***/
		case formula(FormulaType)
		/***/
		case instanceFormula(InstanceFormulaType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "formula" {	self = .formula(FormulaType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "formula").first {
	self = .formula(FormulaType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "instance_formula" {	self = .instanceFormula(InstanceFormulaType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "instance_formula").first {
	self = .instanceFormula(InstanceFormulaType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: [KinematicsAxisInfoTypeChoice0]


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.axis = String(xmlElement.attribute(forName: "axis")!.stringValue!)
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "active").first {
			self.active = CommonBoolOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.active = nil }
		if let childElement = xmlElement.elements(forName: "locked").first {
			self.locked = CommonBoolOrParamType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.locked = nil }
		self.index = xmlElement.elements(forName: "index").map { KinematicsIndexType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let childElement = xmlElement.elements(forName: "limits").first {
			self.limits = KinematicsLimitsType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.limits = nil }
		self.choice0 = xmlElement.children?.flatMap { $0 as? NSXMLElement }.flatMap { KinematicsAxisInfoTypeChoice0(xmlElement: $0, sourcesToObjects: &sourcesToObjects) } ?? []
	}

}
/**
*/
final class KinematicsTechniqueType : ColladaType {


	/***/
	let axisInfo: [KinematicsAxisInfoType]


	/***/
	let frameOrigin: KinematicsFrameType


	/***/
	let frameTip: KinematicsFrameType


	/***/
	let frameTcp: KinematicsFrameType?


	/***/
	let frameObject: KinematicsFrameType?



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.axisInfo = xmlElement.elements(forName: "axis_info").map { KinematicsAxisInfoType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.frameOrigin = KinematicsFrameType(xmlElement: xmlElement.elements(forName: "frame_origin").first!, sourcesToObjects: &sourcesToObjects)
		self.frameTip = KinematicsFrameType(xmlElement: xmlElement.elements(forName: "frame_tip").first!, sourcesToObjects: &sourcesToObjects)
		if let childElement = xmlElement.elements(forName: "frame_tcp").first {
			self.frameTcp = KinematicsFrameType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.frameTcp = nil }
		if let childElement = xmlElement.elements(forName: "frame_object").first {
			self.frameObject = KinematicsFrameType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.frameObject = nil }
	}

}
/**
*/
final class KinematicsType : ColladaType {


	/***/
	let instanceKinematicsModel: [InstanceKinematicsModelType]


	/***/
	let techniqueCommon: KinematicsTechniqueType


	/***/
	let technique: [TechniqueType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		self.instanceKinematicsModel = xmlElement.elements(forName: "instance_kinematics_model").map { InstanceKinematicsModelType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.techniqueCommon = KinematicsTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!, sourcesToObjects: &sourcesToObjects)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
	}

}
/**
*/
final class ArticulatedSystemType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let extra: [ExtraType]

	enum ArticulatedSystemTypeChoice0 {
		/***/
		case kinematics(KinematicsType)
		/***/
		case motion(MotionType)
	init?(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
if xmlElement.name == "kinematics" {	self = .kinematics(KinematicsType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "kinematics").first {
	self = .kinematics(KinematicsType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
if xmlElement.name == "motion" {	self = .motion(MotionType(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects))
	return
}
if let element = xmlElement.elements(forName: "motion").first {
	self = .motion(MotionType(xmlElement: element, sourcesToObjects: &sourcesToObjects))
	return
}
return nil
}
	}

	/***/
	let choice0: ArticulatedSystemTypeChoice0


	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.choice0 = ArticulatedSystemTypeChoice0(xmlElement: xmlElement, sourcesToObjects: &sourcesToObjects)!
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class LibraryArticulatedSystemsType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let articulatedSystem: [ArticulatedSystemType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.articulatedSystem = xmlElement.elements(forName: "articulated_system").map { ArticulatedSystemType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}
/**
*/
final class LibraryFormulasType : ColladaType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let formula: [FormulaType]


	/***/
	let extra: [ExtraType]



	init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement, sourcesToObjects: &sourcesToObjects)
		} else { self.asset = nil }
		self.formula = xmlElement.elements(forName: "formula").map { FormulaType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
		if let id = self.id { sourcesToObjects[id] = self	} }

}