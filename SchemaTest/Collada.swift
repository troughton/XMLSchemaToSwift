import Foundation


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
class InputGlobalType {
	/**
				The semantic attribute is the user-defined meaning of the input connection. Required attribute.
				*/
	let semantic: String

	/**
				The source attribute indicates the location of the data source. Required attribute.
				*/
	let source: String



	init(xmlElement: NSXMLElement) {
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
	}

}
/**
			The input_local_type element is used to represent inputs that can only reference resources declared in the same document.
			*/
class InputLocalType {
	/**
				The semantic attribute is the user-defined meaning of the input connection. Required attribute.
				*/
	let semantic: String

	/**
				The source attribute indicates the location of the data source. Required attribute.
				*/
	let source: UrifragmentType



	init(xmlElement: NSXMLElement) {
		self.semantic = String(xmlElement.attribute(forName: "semantic")!.stringValue!)
		self.source = UrifragmentType(xmlElement.attribute(forName: "source")!.stringValue!)
	}

}
/**
			The input_local_offset_type element is used to represent indexed inputs that can only reference resources declared in the same document.
			*/
class InputLocalOffsetType {
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



	init(xmlElement: NSXMLElement) {
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
class TargetableFloatType {


	let data: FloatType

	init(xmlElement: NSXMLElement) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
			The targetable_float3_type element is used to represent elements which contain a float3 value which can 
			be targeted for animation.
			*/
class TargetableFloat3Type {


	let data: Float3Type

	init(xmlElement: NSXMLElement) {
		self.data = Float3Type(xmlElement.stringValue!)!
	}

}
/**
			The token_array_type element declares the storage for a homogenous array of xs:token string values.
			*/
class TokenArrayType {


	let data: ListOfTokensType

	init(xmlElement: NSXMLElement) {
		self.data = ListOfTokensType(xmlElement.stringValue!)!
	}

}
/**
			The IDREF_array element declares the storage for a homogenous array of ID reference values.
			*/
class IdrefArrayType {


	let data: String

	init(xmlElement: NSXMLElement) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
			The Name_array element declares the storage for a homogenous array of Name string values.
			*/
class NameArrayType {


	let data: ListOfNamesType

	init(xmlElement: NSXMLElement) {
		self.data = ListOfNamesType(xmlElement.stringValue!)!
	}

}
/**
			The bool_array element declares the storage for a homogenous array of boolean values.
			*/
class BoolArrayType {


	let data: ListOfBoolsType

	init(xmlElement: NSXMLElement) {
		self.data = ListOfBoolsType(xmlElement.stringValue!)!
	}

}
/**
			The float_array element declares the storage for a homogenous array of floating point values.
			*/
class FloatArrayType {


	let data: ListOfFloatsType

	init(xmlElement: NSXMLElement) {
		self.data = ListOfFloatsType(xmlElement.stringValue!)!
	}

}
/**
			The int_array element declares the storage for a homogenous array of integer values.
			*/
class IntArrayType {


	let data: ListOfIntsType

	init(xmlElement: NSXMLElement) {
		self.data = ListOfIntsType(xmlElement.stringValue!)!
	}

}
/**
			The param element declares parametric information regarding its parent element.
			*/
class ParamType {


	let data: String

	init(xmlElement: NSXMLElement) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
			The accessor element declares an access pattern to one of the array elements: float_array, 
			int_array, Name_array, bool_array, token_array, and IDREF_array. The accessor element describes access 
			to arrays that are organized in either an interleaved or non-interleaved manner, depending 
			on the offset and stride attributes.
			*/
class AccessorType {
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


	init(xmlElement: NSXMLElement) {
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "offset") {
			self.offset = UintType(attribute.stringValue!)!
		} else { self.offset = nil }
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "stride") {
			self.stride = UintType(attribute.stringValue!)!
		} else { self.stride = nil }
		self.param = xmlElement.elements(forName: "param").map { ParamType(xmlElement: $0) }
	}

}
/**
			The p element represents primitive data for the primitive types (lines, linestrips, polygons, 
			polylist, triangles, trifans, tristrips). The p element contains indices that reference into 
			the parent's source elements referenced by the input elements.
			*/
class PType {


	let data: ListOfUintsType

	init(xmlElement: NSXMLElement) {
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
class LookatType {


	let data: Float3x3Type

	init(xmlElement: NSXMLElement) {
		self.data = Float3x3Type(xmlElement.stringValue!)!
	}

}
/**
			Matrix transformations embody mathematical changes to points within a coordinate systems or the 
			coordinate system itself. The matrix element contains a 4-by-4 matrix of floating-point values.
			*/
class MatrixType {


	let data: Float4x4Type

	init(xmlElement: NSXMLElement) {
		self.data = Float4x4Type(xmlElement.stringValue!)!
	}

}
/**
			The scale element contains a mathematical vector that represents the relative proportions of the 
			X, Y and Z axes of a coordinated system.
			*/
class ScaleType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			The skew element contains an angle and two mathematical vectors that represent the axis of 
			rotation and the axis of translation.
			*/
class SkewType {


	let data: Float7Type

	init(xmlElement: NSXMLElement) {
		self.data = Float7Type(xmlElement.stringValue!)!
	}

}
/**
			The translate element contains a mathematical vector that represents the distance along the 
			X, Y and Z-axes.
			*/
class TranslateType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class ImageSourceType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class ImageMipsType {
	/**Zero is max levels = 1 + floor(log2(max(w, h, d)))
in both OpenGL and DirectX.  One is no mips.*/
	let levels: UInt32

	/**regenerate the mipmaps based on information loaded into mip0*/
	let autoGenerate: Bool



	init(xmlElement: NSXMLElement) {
		self.levels = UInt32(xmlElement.attribute(forName: "levels")!.stringValue!)!
		self.autoGenerate = Bool(xmlElement.attribute(forName: "auto_generate")!.stringValue!)!
	}

}
/**
			The channel element declares an output channel of an animation.
			*/
class ChannelType {
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



	init(xmlElement: NSXMLElement) {
		self.source = UrifragmentType(xmlElement.attribute(forName: "source")!.stringValue!)
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
	}

}
/**
			The sampler element declares an N-dimensional function used for animation. Animation function curves 
			are represented by 1-D sampler elements in COLLADA. The sampler defines sampling points and how to 
			interpolate between them.
			*/
class SamplerType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "pre_behavior") {
			self.preBehavior = SamplerBehaviorEnum(attribute.stringValue!)
		} else { self.preBehavior = nil }
		if let attribute = xmlElement.attribute(forName: "post_behavior") {
			self.postBehavior = SamplerBehaviorEnum(attribute.stringValue!)
		} else { self.postBehavior = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0) }
	}

}
/**
			The technique element declares the information used to process some portion of the content. Each 
			technique conforms to an associated profile. Techniques generally act as a "switch". If more than 
			one is present for a particular portion of content, on import, one or the other is picked, but 
			usually not both. Selection should be based on which profile the importing application can support.
			Techniques contain application data and programs, making them assets that can be managed as a unit.
			*/
class TechniqueType {
	/**
					The profile attribute indicates the type of profile. This is a vendor defined character 
					string that indicates the platform or capability target for the technique. Required attribute.
					*/
	let profile: String



	init(xmlElement: NSXMLElement) {
		self.profile = String(xmlElement.attribute(forName: "profile")!.stringValue!)
	}

}
/**
			The extra element declares additional information regarding its parent element.
			*/
class ExtraType {
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


	init(xmlElement: NSXMLElement) {
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
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
	}

}
/**
			The polylist element provides the information needed to bind vertex attributes together and 
			then organize those vertices into individual polygons. The polygons described in polylist can 
			contain arbitrary numbers of vertices. Unlike the polygons element, the polylist element cannot 
			contain polygons with holes.
			*/
class PolylistType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "vcount").first {
			self.vcount = ListOfUintsType(childElement.stringValue!)!
		} else { self.vcount = nil }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The polygons element provides the information needed to bind vertex attributes together and 
			then organize those vertices into individual polygons. The polygons described can contain 
			arbitrary numbers of vertices. These polygons may be self intersecting and may also contain holes.
			*/
class PolygonsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The linestrips element provides the information needed to bind vertex attributes together and 
			then organize those vertices into connected line-strips. Each line-strip described by the mesh 
			has an arbitrary number of vertices. Each line segment within the line-strip is formed from the 
			current vertex and the preceding vertex.
			*/
class LinestripsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.p = xmlElement.elements(forName: "p").map { PType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The tristrips element provides the information needed to bind vertex attributes together and then 
			organize those vertices into connected triangles. Each triangle described by the mesh has three 
			vertices. The first triangle is formed from first, second, and third vertices. Each subsequent 
			triangle is formed from the current vertex, reusing the previous two vertices.
			*/
class TristripsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.p = xmlElement.elements(forName: "p").map { PType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The lines element provides the information needed to bind vertex attributes together and then 
			organize those vertices into individual lines. Each line described by the mesh has two vertices. 
			The first line is formed from first and second vertices. The second line is formed from the 
			third and fourth vertices and so on.
			*/
class LinesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The triangles element provides the information needed to bind vertex attributes together and 
			then organize those vertices into individual triangles.	Each triangle described by the mesh has 
			three vertices. The first triangle is formed from the first, second, and third vertices. The 
			second triangle is formed from the fourth, fifth, and sixth vertices, and so on.
			*/
class TrianglesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The trifans element provides the information needed to bind vertex attributes together and then 
			organize those vertices into connected triangles. Each triangle described by the mesh has three 
			vertices. The first triangle is formed from first, second, and third vertices. Each subsequent 
			triangle is formed from the current vertex, reusing the first and the previous vertices.
			*/
class TrifansType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "material") {
			self.material = String(attribute.stringValue!)
		} else { self.material = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.p = xmlElement.elements(forName: "p").map { PType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The vertices element declares the attributes and identity of mesh-vertices. The vertices element
			describes mesh-vertices in a mesh geometry. The mesh-vertices represent the position (identity) 
			of the vertices comprising the mesh and other vertex attributes that are invariant to tessellation.
			*/
class VerticesType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The asset element defines asset management information regarding its parent element.
			*/
class AssetType {

	/**
*/
class Contributor {


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


	init(xmlElement: NSXMLElement) {
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
class Coverage {

	/**
*/
class GeographicLocation {


	/***/
	let longitude: Float


	/***/
	let latitude: Float

	/**
*/
class Altitude {


	let data: Float

	init(xmlElement: NSXMLElement) {
		self.data = Float(xmlElement.stringValue!)!
	}

}
	/**
												 Altitude is always given in meters.  If the mode is "absolute", then the value is interpreted as meters from mean sea level.  If the mode is "relativeToGround" then the value is interpreted as meters above the actual ground elevation at that particular location. 
												*/
	let altitude: Altitude


	init(xmlElement: NSXMLElement) {
		self.longitude = Float(xmlElement.elements(forName: "longitude").first!.stringValue!)!
		self.latitude = Float(xmlElement.elements(forName: "latitude").first!.stringValue!)!
		self.altitude = Altitude(xmlElement: xmlElement.elements(forName: "altitude").first!)
	}

}
	/**
									Specifies the location of the asset using the WGS84 coordinate system. 
									*/
	let geographicLocation: GeographicLocation?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "geographic_location").first {
			self.geographicLocation = GeographicLocation(xmlElement: childElement)
		} else { self.geographicLocation = nil }
	}

}
	/***/
	let coverage: Coverage?


	/**
						The created element contains the date and time that the parent element was created and is 
						represented in an ISO 8601 format.  The created element may appear zero or one time.
						*/
	let created: NSDate


	/**
						The keywords element contains a list of words used as search criteria for the parent element. 
						There may be only one keywords element.
						*/
	let keywords: String?


	/**
						The modified element contains the date and time that the parent element was last modified and 
						represented in an ISO 8601 format. The modified element may appear zero or one time.
						*/
	let modified: NSDate


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
class Unit {
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



	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		self.contributor = xmlElement.elements(forName: "contributor").map { Contributor(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "coverage").first {
			self.coverage = Coverage(xmlElement: childElement)
		} else { self.coverage = nil }
		self.created = NSDate(string: xmlElement.elements(forName: "created").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "keywords").first {
			self.keywords = String(childElement.stringValue!)
		} else { self.keywords = nil }
		self.modified = NSDate(string: xmlElement.elements(forName: "modified").first!.stringValue!)!
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
			self.unit = Unit(xmlElement: childElement)
		} else { self.unit = nil }
		if let childElement = xmlElement.elements(forName: "up_axis").first {
			self.upAxis = UpAxisEnum(childElement.stringValue!)
		} else { self.upAxis = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class ImageType {
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
class Renderable {
	/**As a render target, true = shared across all users, false = unique per instance*/
	let share: Bool



	init(xmlElement: NSXMLElement) {
		self.share = Bool(xmlElement.attribute(forName: "share")!.stringValue!)!
	}

}
	/**This image is renderable  if this element is used*/
	let renderable: Renderable?


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
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
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		if let childElement = xmlElement.elements(forName: "renderable").first {
			self.renderable = Renderable(xmlElement: childElement)
		} else { self.renderable = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The camera element declares a view into the scene hierarchy or scene graph. The camera contains 
			elements that describe the camera's optics and imager.
			*/
class CameraType {
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
class Optics {

	/**
*/
class TechniqueCommon {




	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Optics represents the apparatus on a camera that projects the image onto the image sensor.
						*/
	let optics: Optics

	/**
*/
class Imager {


	/**
									This element may contain any number of non-common profile techniques.
									There is no common technique for imager.
									*/
	let technique: [TechniqueType]


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.optics = Optics(xmlElement: xmlElement.elements(forName: "optics").first!)
		if let childElement = xmlElement.elements(forName: "imager").first {
			self.imager = Imager(xmlElement: childElement)
		} else { self.imager = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The light element declares a light source that illuminates the scene.
			Light sources have many different properties and radiate light in many different patterns and 
			frequencies.
			*/
class LightType {
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
class TechniqueCommon {




	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The instance_with_extra_type element is used for all generic instance elements. A generic instance element 
			is one which does not have any specific child elements declared.
			*/
class InstanceWithExtraType {
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


	init(xmlElement: NSXMLElement) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class InstanceImageType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			The instance_camera element declares the instantiation of a COLLADA camera resource.
			*/
class InstanceCameraType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			The instance_force_field element declares the instantiation of a COLLADA force_field resource.
			*/
class InstanceForceFieldType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			The instance_light element declares the instantiation of a COLLADA light resource.
			*/
class InstanceLightType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			The instance_material element declares the instantiation of a COLLADA material resource.
			*/
class InstanceMaterialType {
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
class Bind {
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



	init(xmlElement: NSXMLElement) {
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
class BindVertexInput {
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



	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { Bind(xmlElement: $0) }
		self.bindVertexInput = xmlElement.elements(forName: "bind_vertex_input").map { BindVertexInput(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			Bind a specific material to a piece of geometry, binding varying and uniform parameters at the 
			same time.
			*/
class BindMaterialType {


	/**
						The bind_material element may contain any number of param elements.
						*/
	let param: [ParamType]

	/**
*/
class TechniqueCommon {


	/**
									The instance_material element specifies the information needed to bind a geometry
									to a material. This element must appear at least once.
									*/
	let instanceMaterial: [InstanceMaterialType]


	init(xmlElement: NSXMLElement) {
		self.instanceMaterial = xmlElement.elements(forName: "instance_material").map { InstanceMaterialType(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
		self.param = xmlElement.elements(forName: "param").map { ParamType(xmlElement: $0) }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The instance_controller element declares the instantiation of a COLLADA controller resource.
			*/
class InstanceControllerType {
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


	init(xmlElement: NSXMLElement) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.skeleton = xmlElement.elements(forName: "skeleton").map { String($0) }
		if let childElement = xmlElement.elements(forName: "bind_material").first {
			self.bindMaterial = BindMaterialType(xmlElement: childElement)
		} else { self.bindMaterial = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The instance_geometry element declares the instantiation of a COLLADA geometry resource.
			*/
class InstanceGeometryType {
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


	init(xmlElement: NSXMLElement) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "bind_material").first {
			self.bindMaterial = BindMaterialType(xmlElement: childElement)
		} else { self.bindMaterial = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The instance_node element declares the instantiation of a COLLADA node resource.
			*/
class InstanceNodeType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			The instance_physics_material element declares the instantiation of a COLLADA physics_material 
			resource.
			*/
class InstancePhysicsMaterialType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			This element allows instancing a rigid_constraint within an instance_physics_model. 
			*/
class InstanceRigidConstraintType {
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


	init(xmlElement: NSXMLElement) {
		self.constraint = String(xmlElement.attribute(forName: "constraint")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_cameras element declares a module of camera elements.
			*/
class LibraryCamerasType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.camera = xmlElement.elements(forName: "camera").map { CameraType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_images element declares a module of image elements.
			*/
class LibraryImagesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.image = xmlElement.elements(forName: "image").map { ImageType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_lights element declares a module of light elements.
			*/
class LibraryLightsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.light = xmlElement.elements(forName: "light").map { LightType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The instance_effect element declares the instantiation of a COLLADA effect resource.
			*/
class InstanceEffectType {
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
class TechniqueHint {
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



	init(xmlElement: NSXMLElement) {
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
class Setparam {
	/***/
	let ref: String



	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.techniqueHint = xmlElement.elements(forName: "technique_hint").map { TechniqueHint(xmlElement: $0) }
		self.setparam = xmlElement.elements(forName: "setparam").map { Setparam(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			Materials describe the visual appearance of a geometric object.
			*/
class MaterialType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.instanceEffect = InstanceEffectType(xmlElement: xmlElement.elements(forName: "instance_effect").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_materials element declares a module of material elements.
			*/
class LibraryMaterialsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.material = xmlElement.elements(forName: "material").map { MaterialType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**Sampling state that can be sharable between samplers because there is often heavy re-use*/
class FxSamplerType {


	/***/
	let instanceImage: InstanceImageType?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "instance_image").first {
			self.instanceImage = InstanceImageType(xmlElement: childElement)
		} else { self.instanceImage = nil }
	}

}
/**
			A one-dimensional texture sampler.
			*/
class FxSampler1DType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			A two-dimensional texture sampler.
			*/
class FxSampler2DType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			A three-dimensional texture sampler.
			*/
class FxSampler3DType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			A texture sampler for cube maps.
			*/
class FxSamplerCUBEType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			A two-dimensional texture sampler.
			*/
class FxSamplerRECTType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
			A texture sampler for depth maps.
			*/
class FxSamplerDEPTHType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FxRendertargetType {
	/**array index*/
	let index: UInt32?

	/**mip level*/
	let mip: UInt32?

	/**cube face*/
	let face: ImageFaceEnum?

	/**volume depth*/
	let slice: UInt32?



	init(xmlElement: NSXMLElement) {
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
class FxColortargetType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FxDepthtargetType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FxStenciltargetType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FxClearcolorType {


	let data: FxColorType

	init(xmlElement: NSXMLElement) {
		self.data = FxColorType(xmlElement.stringValue!)!
	}

}
/**
*/
class FxCleardepthType {


	let data: FloatType

	init(xmlElement: NSXMLElement) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
*/
class FxClearstencilType {


	let data: [UInt8]

	init(xmlElement: NSXMLElement) {
		self.data = [UInt8](xmlElement.stringValue!)!
	}

}
/**
*/
class FxAnnotateType {
	/***/
	let name: String



	init(xmlElement: NSXMLElement) {
		self.name = String(xmlElement.attribute(forName: "name")!.stringValue!)
	}

}
/**
			This element creates a new, named param object in the FX Runtime, assigns it a type, an initial value, and additional attributes at declaration time.
			*/
class FxNewparamType {
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


	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
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
class FxIncludeType {
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



	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
	}

}
/**
			The fx_code_common type allows you to specify an inline block of source code.
			*/
class FxCodeType {


	let data: String

	init(xmlElement: NSXMLElement) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
*/
class FxSourcesType {




	init(xmlElement: NSXMLElement) {
	}

}
/**identify the platform_sku and compiler options to build a binary*/
class FxTargetType {
	/**Name of sub-platform.  May be identical to the platform_series*/
	let platform: String

	/**compiler or linker results symbol.  Ex arbvp1, arbfp1, glslv, glslf, hlslv, hlslf, vs_3_0, ps_3_0*/
	let target: String?

	/**compiler or linker options*/
	let options: String?
	/**
*/
class Binary {




	init(xmlElement: NSXMLElement) {
	}

}
	/***/
	let binary: Binary?


	init(xmlElement: NSXMLElement) {
		self.platform = String(xmlElement.attribute(forName: "platform")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "target") {
			self.target = String(attribute.stringValue!)
		} else { self.target = nil }
		if let attribute = xmlElement.attribute(forName: "options") {
			self.options = String(attribute.stringValue!)
		} else { self.options = nil }
		if let childElement = xmlElement.elements(forName: "binary").first {
			self.binary = Binary(xmlElement: childElement)
		} else { self.binary = nil }
	}

}
/**
*/
class FxCommonFloatOrParamType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FxCommonColorOrTextureType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FxCommonTransparentType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FxCommonNewparamType {
	/**
				The sid attribute is a text string value containing the sub-identifier of this element. 
				This value must be unique within the scope of the parent element. Optional attribute.
				*/
	let sid: SidType

	/***/
	let semantic: String?


	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
	}

}
/**
			Opens a block of COMMON platform-specific data types and technique declarations.
			*/
class ProfileCommonType {
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
class Technique {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: Technique


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { FxCommonNewparamType(xmlElement: $0) }
		self.technique = Technique(xmlElement: xmlElement.elements(forName: "technique").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**Bridge COLLADA FX to an external FX framework such as NVIDIA's CgFX or Microsoft's Direct3D FX*/
class ProfileBridgeType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**Declare a new parameter in the profile to be bound to the pipeline state or shaders*/
class Gles2NewparamType {
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


	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		if let childElement = xmlElement.elements(forName: "modifier").first {
			self.modifier = FxModifierEnum(childElement.stringValue!)
		} else { self.modifier = nil }
	}

}
/**Identify code fragments and bind their parameters to effect parameters to identify how their values will be filled in*/
class Gles2ShaderType {
	/**GPU Pipeline stage for this programmable shader. Current standards are VERTEX (vertex shader), FRAGMENT (pixel or fragment shader).  These are recognized by both GLSL and CG*/
	let stage: FxPipelineStageEnum
	/**
*/
class Sources {




	init(xmlElement: NSXMLElement) {
	}

}
	/**sid of the code or include element which provides the source for this shader.  Code may come from local or library_code.*/
	let sources: Sources


	/**Not used by GLSL.  This identifies a very specific binary target format for such things as a specific generation of GPU.  Ex. NV4x*/
	let compiler: [FxTargetType]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.stage = FxPipelineStageEnum(xmlElement.attribute(forName: "stage")!.stringValue!)
		self.sources = Sources(xmlElement: xmlElement.elements(forName: "sources").first!)
		self.compiler = xmlElement.elements(forName: "compiler").map { FxTargetType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**a program is one or more shaders linked together*/
class Gles2ProgramType {


	/**compile shader stages*/
	let shader: [Gles2ShaderType]


	/**link shaders into program*/
	let linker: [FxTargetType]

	/**
*/
class BindAttribute {
	/**shader variable name*/
	let symbol: String



	init(xmlElement: NSXMLElement) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind attributes.  If not bound then it is assumed to be the same semantic as the variable name.  If the variable name is prefixed with "gl_" or "sv_" then the prefix may be ignored.*/
	let bindAttribute: [BindAttribute]

	/**
*/
class BindUniform {
	/**shader variable name*/
	let symbol: String



	init(xmlElement: NSXMLElement) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind uniforms and samplers*/
	let bindUniform: [BindUniform]


	init(xmlElement: NSXMLElement) {
		self.shader = xmlElement.elements(forName: "shader").map { Gles2ShaderType(xmlElement: $0) }
		self.linker = xmlElement.elements(forName: "linker").map { FxTargetType(xmlElement: $0) }
		self.bindAttribute = xmlElement.elements(forName: "bind_attribute").map { BindAttribute(xmlElement: $0) }
		self.bindUniform = xmlElement.elements(forName: "bind_uniform").map { BindUniform(xmlElement: $0) }
	}

}
/**Set up pipeline state and shaders for rendering*/
class Gles2PassType {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/**Add metadata to this pass that may be used by games or tools to make decisions*/
	let annotate: [FxAnnotateType]

	/**
*/
class States {




	init(xmlElement: NSXMLElement) {
	}

}
	/**API state*/
	let states: States?


	/**A vertex_shader and fragment_shader are linked together to produce a OpenGL ES 2 program.*/
	let program: Gles2ProgramType?

	/**
*/
class Evaluate {


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


	init(xmlElement: NSXMLElement) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/**runtime execution helpers*/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "program").first {
			self.program = Gles2ProgramType(xmlElement: childElement)
		} else { self.program = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**FX for OpenGL ES 2.0*/
class ProfileGles2Type {
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
class Newparam {




	init(xmlElement: NSXMLElement) {
	}

}
	/***/
	let newparam: [Newparam]

	/**
*/
class Technique {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		self.pass = xmlElement.elements(forName: "pass").map { Gles2PassType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.language = String(xmlElement.attribute(forName: "language")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "platforms") {
			self.platforms = ListOfNamesType(attribute.stringValue!)!
		} else { self.platforms = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { Newparam(xmlElement: $0) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The glsl_newarray_type element is used to creates a parameter of a one-dimensional array type.
			*/
class GlslArrayType {
	/**
				The length attribute specifies the length of the array.
				*/
	let length: UInt32



	init(xmlElement: NSXMLElement) {
		self.length = UInt32(xmlElement.attribute(forName: "length")!.stringValue!)!
	}

}
/**
*/
class GlslNewparamType {
	/***/
	let sid: SidType

	/***/
	let annotate: [FxAnnotateType]


	/***/
	let semantic: String?


	/***/
	let modifier: FxModifierEnum?


	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "semantic").first {
			self.semantic = String(childElement.stringValue!)
		} else { self.semantic = nil }
		if let childElement = xmlElement.elements(forName: "modifier").first {
			self.modifier = FxModifierEnum(childElement.stringValue!)
		} else { self.modifier = nil }
	}

}
/**Identify code fragments and bind their parameters to effect parameters to identify how their values will be filled in*/
class GlslShaderType {
	/**GPU Pipeline stage for this programmable shader. Current standards are VERTEX (vertex shader), FRAGMENT (pixel or fragment shader).  These are recognized by both GLSL and CG*/
	let stage: FxPipelineStageEnum

	/**sid of the code or include element which provides the source for this shader.  Code may come from local or library_code.*/
	let sources: FxSourcesType


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.stage = FxPipelineStageEnum(xmlElement.attribute(forName: "stage")!.stringValue!)
		self.sources = FxSourcesType(xmlElement: xmlElement.elements(forName: "sources").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**a program is one or more shaders linked together*/
class GlslProgramType {


	/**compile shader stages*/
	let shader: [GlslShaderType]

	/**
*/
class BindAttribute {
	/**shader variable name*/
	let symbol: String



	init(xmlElement: NSXMLElement) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind attributes.  If not bound then it is assumed to be the same semantic as the variable name.  If the variable name is prefixed with "gl_" or "sv_" then the prefix may be ignored.*/
	let bindAttribute: [BindAttribute]

	/**
*/
class BindUniform {
	/**shader variable name*/
	let symbol: String



	init(xmlElement: NSXMLElement) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**Bind uniforms and samplers*/
	let bindUniform: [BindUniform]


	init(xmlElement: NSXMLElement) {
		self.shader = xmlElement.elements(forName: "shader").map { GlslShaderType(xmlElement: $0) }
		self.bindAttribute = xmlElement.elements(forName: "bind_attribute").map { BindAttribute(xmlElement: $0) }
		self.bindUniform = xmlElement.elements(forName: "bind_uniform").map { BindUniform(xmlElement: $0) }
	}

}
/**
			Opens a block of GLSL platform-specific data types and technique declarations.
			*/
class ProfileGlslType {
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
class Technique {
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
class Pass {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/***/
	let annotate: [FxAnnotateType]

	/**
*/
class States {




	init(xmlElement: NSXMLElement) {
	}

}
	/***/
	let states: States?


	/***/
	let program: GlslProgramType?

	/**
*/
class Evaluate {


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


	init(xmlElement: NSXMLElement) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/***/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "program").first {
			self.program = GlslProgramType(xmlElement: childElement)
		} else { self.program = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
									A static declaration of all the render states, shaders, and settings for one rendering pipeline.
									*/
	let pass: [Pass]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		self.pass = xmlElement.elements(forName: "pass").map { Pass(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { GlslNewparamType(xmlElement: $0) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			Creates a parameter of a one-dimensional array type.
			*/
class CgArrayType {
	/**
				The length attribute specifies the length of the array.
				*/
	let length: UInt32

	/**The array may be resized when changed because it is connected to a Cg unsized array.*/
	let resizable: Bool?



	init(xmlElement: NSXMLElement) {
		self.length = UInt32(xmlElement.attribute(forName: "length")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "resizable") {
			self.resizable = Bool(attribute.stringValue!)!
		} else { self.resizable = nil }
	}

}
/**
			Assigns a new value to a previously defined parameter.
			*/
class CgSetparamType {
	/***/
	let ref: String



	init(xmlElement: NSXMLElement) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
			Creates an instance of a structured class.
			*/
class CgUserType {
	/***/
	let typename: String

	/**Reference a code or include element which defines the usertype
				*/
	let source: String?

	/**Use a series of these to set the members by name.  The ref attribute will be relative to the usertype you are in right now.*/
	let setparam: [CgSetparamType]


	init(xmlElement: NSXMLElement) {
		self.typename = String(xmlElement.attribute(forName: "typename")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "source") {
			self.source = String(attribute.stringValue!)
		} else { self.source = nil }
		self.setparam = xmlElement.elements(forName: "setparam").map { CgSetparamType(xmlElement: $0) }
	}

}
/**
			Create a new, named param object in the CG Runtime, assign it a type, an initial value, and additional attributes at declaration time.
			*/
class CgNewparamType {
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


	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
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
class CgPassType {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/***/
	let annotate: [FxAnnotateType]

	/**
*/
class States {




	init(xmlElement: NSXMLElement) {
	}

}
	/***/
	let states: States?

	/**
*/
class Program {

	/**
*/
class Shader {
	/**
															In which pipeline stage this programmable shader is designed to execute, for example, VERTEX, FRAGMENT, etc.
															*/
	let stage: FxPipelineStageEnum
	/**
*/
class Sources {




	init(xmlElement: NSXMLElement) {
	}

}
	/**collect the sources together for the shader.  Use concat to make the final string.																*/
	let sources: Sources


	/***/
	let compiler: [FxTargetType]

	/**
*/
class BindUniform {
	/**
																		The identifier for a uniform input parameter to the shader (a formal function parameter or in-scope 
																		global) that will be bound to an external resource.
																		*/
	let symbol: String



	init(xmlElement: NSXMLElement) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
	/**
																Binds values to uniform inputs of a shader.
																*/
	let bindUniform: [BindUniform]


	init(xmlElement: NSXMLElement) {
		self.stage = FxPipelineStageEnum(xmlElement.attribute(forName: "stage")!.stringValue!)
		self.sources = Sources(xmlElement: xmlElement.elements(forName: "sources").first!)
		self.compiler = xmlElement.elements(forName: "compiler").map { FxTargetType(xmlElement: $0) }
		self.bindUniform = xmlElement.elements(forName: "bind_uniform").map { BindUniform(xmlElement: $0) }
	}

}
	/**
													Declare and prepare a shader for execution in the rendering pipeline of a pass.
													*/
	let shader: [Shader]


	init(xmlElement: NSXMLElement) {
		self.shader = xmlElement.elements(forName: "shader").map { Shader(xmlElement: $0) }
	}

}
	/***/
	let program: Program?

	/**
*/
class Evaluate {


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


	init(xmlElement: NSXMLElement) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/***/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "program").first {
			self.program = Program(xmlElement: childElement)
		} else { self.program = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			Opens a block of CG platform-specific data types and technique declarations.
			*/
class ProfileCgType {
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
class Technique {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		self.pass = xmlElement.elements(forName: "pass").map { CgPassType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { CgNewparamType(xmlElement: $0) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class GlesTextureConstantType {
	/***/
	let value: Float4Type?

	/***/
	let param: String?



	init(xmlElement: NSXMLElement) {
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
class GlesTexenvCommandType {
	/***/
	let theOperator: GlesTexenvModeEnum?

	/***/
	let sampler: String?

	/***/
	let constant: GlesTextureConstantType?


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "operator") {
			self.theOperator = GlesTexenvModeEnum(attribute.stringValue!)
		} else { self.theOperator = nil }
		if let attribute = xmlElement.attribute(forName: "sampler") {
			self.sampler = String(attribute.stringValue!)
		} else { self.sampler = nil }
		if let childElement = xmlElement.elements(forName: "constant").first {
			self.constant = GlesTextureConstantType(xmlElement: childElement)
		} else { self.constant = nil }
	}

}
/**
*/
class GlesTexcombinerArgumentRgbType {
	/***/
	let source: GlesTexcombinerSourceEnum?

	/***/
	let operand: GlesTexcombinerOperandRgbEnum?

	/***/
	let sampler: String?



	init(xmlElement: NSXMLElement) {
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
class GlesTexcombinerArgumentAlphaType {
	/***/
	let source: GlesTexcombinerSourceEnum?

	/***/
	let operand: GlesTexcombinerOperandAlphaEnum?

	/***/
	let sampler: String?



	init(xmlElement: NSXMLElement) {
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
class GlesTexcombinerCommandRgbType {
	/***/
	let theOperator: GlesTexcombinerOperatorRgbEnum?

	/***/
	let scale: Float?

	/***/
	let argument: [GlesTexcombinerArgumentRgbType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "operator") {
			self.theOperator = GlesTexcombinerOperatorRgbEnum(attribute.stringValue!)
		} else { self.theOperator = nil }
		if let attribute = xmlElement.attribute(forName: "scale") {
			self.scale = Float(attribute.stringValue!)!
		} else { self.scale = nil }
		self.argument = xmlElement.elements(forName: "argument").map { GlesTexcombinerArgumentRgbType(xmlElement: $0) }
	}

}
/**
*/
class GlesTexcombinerCommandAlphaType {
	/***/
	let theOperator: GlesTexcombinerOperatorAlphaEnum?

	/***/
	let scale: Float?

	/***/
	let argument: [GlesTexcombinerArgumentAlphaType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "operator") {
			self.theOperator = GlesTexcombinerOperatorAlphaEnum(attribute.stringValue!)
		} else { self.theOperator = nil }
		if let attribute = xmlElement.attribute(forName: "scale") {
			self.scale = Float(attribute.stringValue!)!
		} else { self.scale = nil }
		self.argument = xmlElement.elements(forName: "argument").map { GlesTexcombinerArgumentAlphaType(xmlElement: $0) }
	}

}
/**
*/
class GlesTexcombinerCommandType {


	/***/
	let constant: GlesTextureConstantType?


	/***/
	let RGB: GlesTexcombinerCommandRgbType?


	/***/
	let alpha: GlesTexcombinerCommandAlphaType?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "constant").first {
			self.constant = GlesTextureConstantType(xmlElement: childElement)
		} else { self.constant = nil }
		if let childElement = xmlElement.elements(forName: "RGB").first {
			self.RGB = GlesTexcombinerCommandRgbType(xmlElement: childElement)
		} else { self.RGB = nil }
		if let childElement = xmlElement.elements(forName: "alpha").first {
			self.alpha = GlesTexcombinerCommandAlphaType(xmlElement: childElement)
		} else { self.alpha = nil }
	}

}
/**
			Defines a set of texturing commands that will be converted into multitexturing operations using glTexEnv in regular and combiner mode.
			*/
class GlesTexturePipelineType {
	/**
				The sid attribute is a text string value containing the sub-identifier of this element. 
				This value must be unique within the scope of the parent element. Optional attribute.
				*/
	let sid: SidType?



	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
	}

}
/**Sampling state that can be sharable between samplers because there is often heavy re-use*/
class GlesSamplerType {


	/***/
	let instanceImage: InstanceImageType?

	/**
*/
class Texcoord {
	/***/
	let semantic: String?



	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "semantic") {
			self.semantic = String(attribute.stringValue!)
		} else { self.semantic = nil }
	}

}
	/***/
	let texcoord: Texcoord?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "instance_image").first {
			self.instanceImage = InstanceImageType(xmlElement: childElement)
		} else { self.instanceImage = nil }
		if let childElement = xmlElement.elements(forName: "texcoord").first {
			self.texcoord = Texcoord(xmlElement: childElement)
		} else { self.texcoord = nil }
	}

}
/**
			Create a new, named param object in the GLES Runtime, assign it a type, an initial value, and additional attributes at declaration time.
			*/
class GlesNewparamType {
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


	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
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
class ProfileGlesType {
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
class Technique {
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
class Pass {
	/**
											The sid attribute is a text string value containing the sub-identifier of this element. 
											This value must be unique within the scope of the parent element. Optional attribute.
											*/
	let sid: SidType?

	/***/
	let annotate: [FxAnnotateType]

	/**
*/
class States {




	init(xmlElement: NSXMLElement) {
	}

}
	/***/
	let states: States?

	/**
*/
class Evaluate {


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


	init(xmlElement: NSXMLElement) {
		self.colorTarget = xmlElement.elements(forName: "color_target").map { FxColortargetType(xmlElement: $0) }
		self.depthTarget = xmlElement.elements(forName: "depth_target").map { FxDepthtargetType(xmlElement: $0) }
		self.stencilTarget = xmlElement.elements(forName: "stencil_target").map { FxStenciltargetType(xmlElement: $0) }
		self.colorClear = xmlElement.elements(forName: "color_clear").map { FxClearcolorType(xmlElement: $0) }
		self.depthClear = xmlElement.elements(forName: "depth_clear").map { FxCleardepthType(xmlElement: $0) }
		self.stencilClear = xmlElement.elements(forName: "stencil_clear").map { FxClearstencilType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "draw").first {
			self.draw = FxDrawType(childElement.stringValue!)
		} else { self.draw = nil }
	}

}
	/***/
	let evaluate: Evaluate?


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "states").first {
			self.states = States(xmlElement: childElement)
		} else { self.states = nil }
		if let childElement = xmlElement.elements(forName: "evaluate").first {
			self.evaluate = Evaluate(xmlElement: childElement)
		} else { self.evaluate = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
									A static declaration of all the render states, shaders, and settings for one rendering pipeline.
									*/
	let pass: [Pass]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		self.pass = xmlElement.elements(forName: "pass").map { Pass(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Holds a description of the textures, samplers, shaders, parameters, and passes necessary for rendering this effect using one method.
						*/
	let technique: [Technique]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "platform") {
			self.platform = String(attribute.stringValue!)
		} else { self.platform = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { GlesNewparamType(xmlElement: $0) }
		self.technique = xmlElement.elements(forName: "technique").map { Technique(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			A self contained description of a shader effect.
			*/
class EffectType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.annotate = xmlElement.elements(forName: "annotate").map { FxAnnotateType(xmlElement: $0) }
		self.newparam = xmlElement.elements(forName: "newparam").map { FxNewparamType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_effects element declares a module of effect elements.
			*/
class LibraryEffectsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.effect = xmlElement.elements(forName: "effect").map { EffectType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			An axis-aligned, centered box primitive.
			*/
class BoxType {


	/**
						3 float values that represent the extents of the box
						*/
	let halfExtents: Float3Type


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.halfExtents = Float3Type(xmlElement.elements(forName: "half_extents").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			An infinite plane primitive.
			*/
class PlaneType {


	/**
						4 float values that represent the coefficients for the plane's equation:    Ax + By + Cz + D = 0
						*/
	let equation: Float4Type


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.equation = Float4Type(xmlElement.elements(forName: "equation").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			A centered sphere primitive.
			*/
class SphereType {


	/**
						A float value that represents the radius of the sphere
						*/
	let radius: FloatType


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.radius = FloatType(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class EllipsoidType {


	/***/
	let size: Float3Type


	init(xmlElement: NSXMLElement) {
		self.size = Float3Type(xmlElement.elements(forName: "size").first!.stringValue!)!
	}

}
/**
			A cylinder primitive that is centered on, and aligned with. the local Y axis.
			*/
class CylinderType {


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


	init(xmlElement: NSXMLElement) {
		self.height = FloatType(xmlElement.elements(forName: "height").first!.stringValue!)!
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			A capsule primitive that is centered on and aligned with the local Y axis.
			*/
class CapsuleType {


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


	init(xmlElement: NSXMLElement) {
		self.height = FloatType(xmlElement.elements(forName: "height").first!.stringValue!)!
		self.radius = Float3Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			A general container for force-fields. At the moment, it only has techniques and extra elements.
			*/
class ForceFieldType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_force_fields element declares a module of force_field elements.
			*/
class LibraryForceFieldsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.forceField = xmlElement.elements(forName: "force_field").map { ForceFieldType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			This element defines the physical properties of an object. It contains a technique/profile with 
			parameters. The COMMON profile defines the built-in names, such as static_friction.
			*/
class PhysicsMaterialType {
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
class TechniqueCommon {


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


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "dynamic_friction").first {
			self.dynamicFriction = TargetableFloatType(xmlElement: childElement)
		} else { self.dynamicFriction = nil }
		if let childElement = xmlElement.elements(forName: "restitution").first {
			self.restitution = TargetableFloatType(xmlElement: childElement)
		} else { self.restitution = nil }
		if let childElement = xmlElement.elements(forName: "static_friction").first {
			self.staticFriction = TargetableFloatType(xmlElement: childElement)
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_physics_materials element declares a module of physics_material elements.
			*/
class LibraryPhysicsMaterialsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.physicsMaterial = xmlElement.elements(forName: "physics_material").map { PhysicsMaterialType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     This element defines all the edges used in the brep     structure.    */
class EdgesType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = Int32(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     This element defines all the wires used in the brep     structure.    */
class WiresType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     This element defines all the faces used in the brep     structure.    */
class FacesType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     This element defines all the shells used in the brep     structure.    */
class ShellsType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     This element defines all the solids used in the brep     structure.    */
class SolidsType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     Describes an infinite line. A line is defined and     positioned in space with an axis which gives it an     origin and a unit vector. The Geom_Line line is     parameterized: P (U) = O + U*Dir, where: - P is the     point of parameter U, - O is the origin and Dir the unit     vector of its positioning axis. The parameter range is ]     -infinite, +infinite [. The orientation of the line is     given by the unit vector of its positioning axis.    */
class LineType {


	/***/
	let origin: Float3Type


	/***/
	let direction: Float3Type


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.origin = Float3Type(xmlElement.elements(forName: "origin").first!.stringValue!)!
		self.direction = Float3Type(xmlElement.elements(forName: "direction").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     Describes a circle. A circle is defined by its radius     and, as with any conic curve, is positioned in space     with a right-handed coordinate system where: - the     origin is the center of the circle, and - the origin, "X     Direction" and "Y Direction" define the plane of the     circle. This coordinate system is the local coordinate     system of the circle. The "main Direction" of this     coordinate system is the vector normal to the plane of     the circle. The axis, of which the origin and unit     vector are respectively the origin and "main Direction"     of the local coordinate system, is termed the "Axis" or     "main Axis" of the circle. The "main Direction" of the     local coordinate system gives an explicit orientation to     the circle (definition of the trigonometric sense),     determining the direction in which the parameter     increases along the circle. The Geom_Circle circle is     parameterized by an angle: P(U) = O + R*Cos(U)*XDir +     R*Sin(U)*YDir, where: - P is the point of parameter U, -     O, XDir and YDir are respectively the origin, "X     Direction" and "Y Direction" of its local coordinate     system, - R is the radius of the circle. The "X     Axis" of the local coordinate system therefore     defines the origin of the parameter of the circle.     The parameter is the angle with this "X Direction".     A circle is a closed and periodic curve. The period     is 2.*Pi and the parameter range is [ 0, 2.*Pi [.    */
class CircleType {


	/***/
	let radius: FloatType


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.radius = FloatType(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     Describes an ellipse in 3D space. An ellipse is defined     by its major and minor radii and, as with any conic     curve, is positioned in space with a right-handed     coordinate system where: - the origin is the center of     the ellipse, - the "X Direction" defines the     major axis, and - the "Y Direction" defines     the minor axis. The origin, "X Direction" and     "Y Direction" of this coordinate system define     the plane of the ellipse. The coordinate system is the     local coordinate system of the ellipse. The "main     Direction" of this coordinate system is the vector     normal to the plane of the ellipse. The axis, of which     the origin and unit vector are respectively the origin     and "main Direction" of the local coordinate     system, is termed the "Axis" or "main     Axis" of the ellipse. The "main     Direction" of the local coordinate system gives an     explicit orientation to the ellipse (definition of the     trigonometric sense), determining the direction in which     the parameter increases along the ellipse. The     Geom_Ellipse ellipse is parameterized by an angle: P(U)     = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir where:     - P is the point of parameter U, - O, XDir and YDir are     respectively the origin, "X <br>     Direction" and "Y Direction" of its local     coordinate system, - MajorRad and MinorRad are the major     and minor radii of the ellipse. The "X Axis"     of the local coordinate system therefore defines the     origin of the parameter of the ellipse. An ellipse is a     closed and periodic curve. The period is 2.*Pi and the     parameter range is [ 0, 2.*Pi [.    */
class EllipseType {


	/***/
	let radius: Float2Type


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     Describes a parabola in 3D space. A parabola is defined     by its focal length (i.e. the distance between its focus     and its apex) and is positioned in space with a     coordinate system where: - the origin is     the apex of the parabola, - the "X Axis"     defines the axis of symmetry; the parabola is on the     positive side of this axis, - the origin, "X     Direction" and "Y Direction" define the     plane of the parabola. This coordinate system is the     local coordinate system of the parabola. The "main     Direction" of this coordinate system is a vector     normal to the plane of the parabola. The axis, of which     the origin and unit vector are respectively the origin     and "main Direction" of the local coordinate     system, is termed the "Axis" or "main     Axis" of the parabola. The "main     Direction" of the local coordinate system gives an     explicit orientation to the parabola, determining the     direction in which the parameter increases along the     parabola. The Geom_Parabola parabola is parameterized as     follows: P(U) = O + U*U/(4.*F)*XDir + U*YDir where: - P     is the point of parameter U, - O, XDir and YDir are     respectively the origin, "X <br>     Direction" and "Y Direction" of its local     coordinate system, - F is the focal length of the     parabola. The parameter of the parabola is therefore its     Y coordinate in the local coordinate system, with the     "X <br> Axis" of the local coordinate     system defining the origin of the parameter. The     parameter range is ] -infinite, +infinite [.    */
class ParabolaType {


	/***/
	let focal: FloatType


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.focal = FloatType(xmlElement.elements(forName: "focal").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     Describes a branch of a hyperbola in 3D space. A     hyperbola is defined by its major and minor radii and,     as with any conic curve, is positioned in space with a     right-handed coordinate system where: - the origin is     the center of the hyperbola, - the "X Direction" defines     the major axis, and - the "Y Direction" defines the     minor axis. The origin, "X Direction" and "Y Direction"     of this coordinate system define the plane of the     hyperbola. The coordinate system is the local coordinate     system of the hyperbola. The branch of the hyperbola     described is the one located on the positive side of the     major axis. The "main Direction" of the local coordinate     system is a vector normal to the plane of the hyperbola.     The axis, of which the origin and unit vector are     respectively the origin and "main Direction" of the     local coordinate system, is termed the "Axis" or "main     Axis" of the hyperbola. The "main Direction" of the     local coordinate system gives an explicit orientation to     the hyperbola, determining the direction in which the     parameter increases along the hyperbola. The     Geom_Hyperbola hyperbola is parameterized as follows:     P(U) = O + MajRad*Cosh(U)*XDir + MinRad*Sinh(U)*YDir,     where: - P is the point of parameter U, - O, XDir and     YDir are respectively the origin, "X Direction" and "Y     Direction" of its local coordinate system, - MajRad and     MinRad are the major and minor radii of the hyperbola.     The "X Axis" of the local coordinate system therefore     defines the origin of the parameter of the hyperbola.     The parameter range is ] -infinite, +infinite [.    */
class HyperbolaType {


	/***/
	let radius: Float2Type


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class TorusType {


	/***/
	let radius: Float2Type


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.radius = Float2Type(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class PcurvesType {
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		self.vcount = ListOfUintsType(xmlElement.elements(forName: "vcount").first!.stringValue!)!
		if let childElement = xmlElement.elements(forName: "p").first {
			self.p = PType(xmlElement: childElement)
		} else { self.p = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The SIDREF_array element declares the storage for a homogenous array of SID reference values.
			*/
class SidrefArrayType {


	let data: ListOfSidrefsType

	init(xmlElement: NSXMLElement) {
		self.data = ListOfSidrefsType(xmlElement.stringValue!)!
	}

}
/**
			The source element declares a data repository that provides values according to the semantics of an 
			input element that refers to it.
			*/
class SourceType {
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
class TechniqueCommon {


	/**
									The source's technique_common must have one and only one accessor.
									*/
	let accessor: AccessorType


	init(xmlElement: NSXMLElement) {
		self.accessor = AccessorType(xmlElement: xmlElement.elements(forName: "accessor").first!)
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


	init(xmlElement: NSXMLElement) {
		self.id = String(xmlElement.attribute(forName: "id")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		if let childElement = xmlElement.elements(forName: "technique_common").first {
			self.techniqueCommon = TechniqueCommon(xmlElement: childElement)
		} else { self.techniqueCommon = nil }
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
	}

}
/**
			The animation element categorizes the declaration of animation information. The animation 
			hierarchy contains elements that describe the animation's key-frame data and sampler functions, 
			ordered in such a way to group together animations that should be executed together.
			*/
class AnimationType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_animations element declares a module of animation elements.
			*/
class LibraryAnimationsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.animation = xmlElement.elements(forName: "animation").map { AnimationType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The skin element contains vertex and primitive information sufficient to describe blend-weight skinning.
			*/
class SkinType {
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
class Joints {


	/**
									The input element must occur at least twice. These inputs are local inputs.
									*/
	let input: [InputLocalType]


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						The joints element associates joint, or skeleton, nodes with attribute data.  
						In COLLADA, this is specified by the inverse bind matrix of each joint (influence) in the skeleton.
						*/
	let joints: Joints

	/**
*/
class VertexWeights {
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


	init(xmlElement: NSXMLElement) {
		self.count = UintType(xmlElement.attribute(forName: "count")!.stringValue!)!
		self.input = xmlElement.elements(forName: "input").map { InputLocalOffsetType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "vcount").first {
			self.vcount = ListOfUintsType(childElement.stringValue!)!
		} else { self.vcount = nil }
		if let childElement = xmlElement.elements(forName: "v").first {
			self.v = ListOfIntsType(childElement.stringValue!)!
		} else { self.v = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "bind_shape_matrix").first {
			self.bindShapeMatrix = Float4x4Type(childElement.stringValue!)!
		} else { self.bindShapeMatrix = nil }
		self.sources = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.joints = Joints(xmlElement: xmlElement.elements(forName: "joints").first!)
		self.vertexWeights = VertexWeights(xmlElement: xmlElement.elements(forName: "vertex_weights").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The definition of the convex_mesh element is identical to the mesh element with the exception that 
			instead of a complete description (source, vertices, polygons etc.), it may simply point to another 
			geometry to derive its shape. The latter case means that the convex hull of that geometry should 
			be computed and is indicated by the optional "convex_hull_of" attribute.
			*/
class ConvexMeshType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "convex_hull_of") {
			self.convexHullOf = String(attribute.stringValue!)
		} else { self.convexHullOf = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.vertices = VerticesType(xmlElement: xmlElement.elements(forName: "vertices").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The mesh element contains vertex and primitive information sufficient to describe basic geometric meshes.
			*/
class MeshType {


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


	init(xmlElement: NSXMLElement) {
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.vertices = VerticesType(xmlElement: xmlElement.elements(forName: "vertices").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The spline element contains control vertex information sufficient to describe basic splines.
			*/
class SplineType {
	/***/
	let closed: Bool?

	/**
						The mesh element must contain one or more source elements.
						*/
	let source: [SourceType]

	/**
*/
class ControlVertices {


	/**
						The input element must occur at least one time. These inputs are local inputs.
						*/
	let input: [InputLocalType]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**The control vertices element  must occur  exactly one time. It is used to describe the CVs of the spline.*/
	let controlVertices: ControlVertices


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "closed") {
			self.closed = Bool(attribute.stringValue!)!
		} else { self.closed = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.controlVertices = ControlVertices(xmlElement: xmlElement.elements(forName: "control_vertices").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class NurbsSurfaceType {
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
class ControlVertices {


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


	init(xmlElement: NSXMLElement) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
		self.degreeU = UintType(xmlElement.attribute(forName: "degree_u")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "closed_u") {
			self.closedU = Bool(attribute.stringValue!)!
		} else { self.closedU = nil }
		self.degreeV = UintType(xmlElement.attribute(forName: "degree_v")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "closed_v") {
			self.closedV = Bool(attribute.stringValue!)!
		} else { self.closedV = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.controlVertices = ControlVertices(xmlElement: xmlElement.elements(forName: "control_vertices").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class NurbsType {
	/***/
	let degree: UintType

	/***/
	let closed: Bool?

	/***/
	let source: [SourceType]

	/**
*/
class ControlVertices {


	/**
						The input element must occur at least one time. These inputs are local inputs.
									*/
	let input: [InputLocalType]


	/**
						The extra element may appear any number of times.
									*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**The control vertices element  must occur  exactly one time. It is used to describe the CVs of the spline.*/
	let controlVertices: ControlVertices


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.degree = UintType(xmlElement.attribute(forName: "degree")!.stringValue!)!
		if let attribute = xmlElement.attribute(forName: "closed") {
			self.closed = Bool(attribute.stringValue!)!
		} else { self.closed = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.controlVertices = ControlVertices(xmlElement: xmlElement.elements(forName: "control_vertices").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The morph element describes the data required to blend between sets of static meshes. Each 
			possible mesh that can be blended (a morph target) must be specified.
			*/
class MorphType {
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
class Targets {


	/**
									The input element must occur at least twice. These inputs are local inputs.
									*/
	let input: [InputLocalType]


	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.input = xmlElement.elements(forName: "input").map { InputLocalType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "method") {
			self.method = MorphMethodEnum(attribute.stringValue!)
		} else { self.method = nil }
		self.source = String(xmlElement.attribute(forName: "source")!.stringValue!)
		self.sources = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.targets = Targets(xmlElement: xmlElement.elements(forName: "targets").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The controller element categorizes the declaration of generic control information.
			A controller is a device or mechanism that manages and directs the operations of another object.
			*/
class ControllerType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_controllers element declares a module of controller elements.
			*/
class LibraryControllersType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.controller = xmlElement.elements(forName: "controller").map { ControllerType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class OriginType {


	let data: Float3Type

	init(xmlElement: NSXMLElement) {
		self.data = Float3Type(xmlElement.stringValue!)!
	}

}
/**
*/
class OrientType {


	let data: Float4Type

	init(xmlElement: NSXMLElement) {
		self.data = Float4Type(xmlElement.stringValue!)!
	}

}
/**     A curveType defines the attributes of a curve element.     With rotate and translate the surface can be positioned     to its right location.    */
class CurveType {
	/**The id of a curve.*/
	let sid: SidType?

	/**      The name of a curve.     */
	let name: String?

	/***/
	let orient: [OrientType]


	/***/
	let origin: OriginType?


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.orient = xmlElement.elements(forName: "orient").map { OrientType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "origin").first {
			self.origin = OriginType(xmlElement: childElement)
		} else { self.origin = nil }
	}

}
/**
				This element holds all the pcurves that are needed for
				the geometrical description of the topological entities
				edges on the surfaces they lie on.
			*/
class SurfaceCurvesType {


	/***/
	let curve: [CurveType]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.curve = xmlElement.elements(forName: "curve").map { CurveType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
				This element holds all the curves that are needed for
				the geometrical description of the topological entities
				edges.
			*/
class CurvesType {


	/***/
	let curve: [CurveType]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.curve = xmlElement.elements(forName: "curve").map { CurveType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     Describes a surface of linear extrusion ("extruded     surface"), e.g. a generalized cylinder. Such a surface     is obtained by sweeping a curve (called the "extruded     curve" or "basis") in a given direction (referred to as     the "direction of extrusion" and defined by a unit     vector). The u parameter is along the extruded curve.     The v parameter is along the direction of extrusion. The     parameter range for the u parameter is defined by the     reference curve. The parameter range for the v parameter     is ] - infinity, + infinity [. The position of the curve     gives the origin of the v parameter. The form of a     surface of linear extrusion is generally a ruled     surface. It can be: - a cylindrical surface, if the     extruded curve is a circle, or a trimmed circle, with an     axis parallel to the direction of extrusion, or - a     planar surface, if the extruded curve is a line.    */
class SweptSurfaceType {


	/***/
	let curve: CurveType


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.curve = CurveType(xmlElement: xmlElement.elements(forName: "curve").first!)
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class ConeType {


	/***/
	let radius: FloatType


	/***/
	let angle: Float


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.radius = FloatType(xmlElement.elements(forName: "radius").first!.stringValue!)!
		self.angle = Float(xmlElement.elements(forName: "angle").first!.stringValue!)!
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     A surfaceType defines the attributes of a surface     element. With rotate and translate the surface can be     positioned to its right location.    */
class SurfaceType {
	/**      The id of the surface.     */
	let sid: SidType?

	/**      The name of the surface.     */
	let name: String?

	/***/
	let orient: [OrientType]


	/***/
	let origin: OriginType?


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.orient = xmlElement.elements(forName: "orient").map { OrientType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "origin").first {
			self.origin = OriginType(xmlElement: childElement)
		} else { self.origin = nil }
	}

}
/**
*/
class SurfacesType {


	/***/
	let surface: [SurfaceType]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.surface = xmlElement.elements(forName: "surface").map { SurfaceType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**     The brep element contains the complete topological     description of a static structure. There are also the     corresponding geometrical descriptions of the vertices,     edges and faces.    */
class BrepType {


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


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "curves").first {
			self.curves = CurvesType(xmlElement: childElement)
		} else { self.curves = nil }
		if let childElement = xmlElement.elements(forName: "surface_curves").first {
			self.surfaceCurves = SurfaceCurvesType(xmlElement: childElement)
		} else { self.surfaceCurves = nil }
		if let childElement = xmlElement.elements(forName: "surfaces").first {
			self.surfaces = SurfacesType(xmlElement: childElement)
		} else { self.surfaces = nil }
		self.source = xmlElement.elements(forName: "source").map { SourceType(xmlElement: $0) }
		self.vertices = VerticesType(xmlElement: xmlElement.elements(forName: "vertices").first!)
		if let childElement = xmlElement.elements(forName: "edges").first {
			self.edges = EdgesType(xmlElement: childElement)
		} else { self.edges = nil }
		if let childElement = xmlElement.elements(forName: "wires").first {
			self.wires = WiresType(xmlElement: childElement)
		} else { self.wires = nil }
		if let childElement = xmlElement.elements(forName: "faces").first {
			self.faces = FacesType(xmlElement: childElement)
		} else { self.faces = nil }
		if let childElement = xmlElement.elements(forName: "pcurves").first {
			self.pcurves = PcurvesType(xmlElement: childElement)
		} else { self.pcurves = nil }
		if let childElement = xmlElement.elements(forName: "shells").first {
			self.shells = ShellsType(xmlElement: childElement)
		} else { self.shells = nil }
		if let childElement = xmlElement.elements(forName: "solids").first {
			self.solids = SolidsType(xmlElement: childElement)
		} else { self.solids = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			Geometry describes the visual shape and appearance of an object in the scene.
			The geometry element categorizes the declaration of geometric information. Geometry is a 
			branch of mathematics that deals with the measurement, properties, and relationships of 
			points, lines, angles, surfaces, and solids.
			*/
class GeometryType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_geometries element declares a module of geometry elements.
			*/
class LibraryGeometriesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.geometry = xmlElement.elements(forName: "geometry").map { GeometryType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class LimitsSubType {


	let data: FloatType

	init(xmlElement: NSXMLElement) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
*/
class InstanceJointType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class TargetableFloat4Type {


	let data: Float4Type

	init(xmlElement: NSXMLElement) {
		self.data = Float4Type(xmlElement.stringValue!)!
	}

}
/**
			The rotate element contains an angle and a mathematical vector that represents the axis of rotation.
			*/
class RotateType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class LinkType {
	/***/
	let sid: SidType?

	/***/
	let name: String?



	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
	}

}
/**
			This element allows for connecting components, such as rigid_body into complex physics models 
			with moveable parts.
			*/
class RigidConstraintType {
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
class RefAttachment {
	/**
								The "rigid_body" attribute is a relative reference to a rigid-body within the same 
								physics_model.
								*/
	let rigidBody: String?

	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "rigid_body") {
			self.rigidBody = String(attribute.stringValue!)
		} else { self.rigidBody = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Defines the attachment (to a rigid_body or a node) to be used as the reference-frame.
						*/
	let refAttachment: RefAttachment

	/**
*/
class Attachment {
	/**
								The "rigid_body" attribute is a relative reference to a rigid-body within the same physics_model.
								*/
	let rigidBody: String?

	/**
									The extra element may appear any number of times.
									*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "rigid_body") {
			self.rigidBody = String(attribute.stringValue!)
		} else { self.rigidBody = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
						Defines an attachment to a rigid-body or a node.
						*/
	let attachment: Attachment

	/**
*/
class TechniqueCommon {

	/**
*/
class Enabled {


	let data: Bool

	init(xmlElement: NSXMLElement) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/**
									If false, the constraint doesn't exert any force or influence on the rigid bodies.
									*/
	let enabled: Enabled?

	/**
*/
class Interpenetrate {


	let data: Bool

	init(xmlElement: NSXMLElement) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/**
									Indicates whether the attached rigid bodies may inter-penetrate.
									*/
	let interpenetrate: Interpenetrate?

	/**
*/
class Limits {

	/**
*/
class SwingConeAndTwist {


	/**
															The minimum values for the limit.
															*/
	let min: TargetableFloat3Type?


	/**
															The maximum values for the limit.
															*/
	let max: TargetableFloat3Type?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "min").first {
			self.min = TargetableFloat3Type(xmlElement: childElement)
		} else { self.min = nil }
		if let childElement = xmlElement.elements(forName: "max").first {
			self.max = TargetableFloat3Type(xmlElement: childElement)
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
class Linear {


	/**
															The minimum values for the limit.
															*/
	let min: TargetableFloat3Type?


	/**
															The maximum values for the limit.
															*/
	let max: TargetableFloat3Type?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "min").first {
			self.min = TargetableFloat3Type(xmlElement: childElement)
		} else { self.min = nil }
		if let childElement = xmlElement.elements(forName: "max").first {
			self.max = TargetableFloat3Type(xmlElement: childElement)
		} else { self.max = nil }
	}

}
	/**
												The linear element describes linear (translational) limits along each axis.
												*/
	let linear: Linear?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "swing_cone_and_twist").first {
			self.swingConeAndTwist = SwingConeAndTwist(xmlElement: childElement)
		} else { self.swingConeAndTwist = nil }
		if let childElement = xmlElement.elements(forName: "linear").first {
			self.linear = Linear(xmlElement: childElement)
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
class Spring {

	/**
*/
class Angular {


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


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "stiffness").first {
			self.stiffness = TargetableFloatType(xmlElement: childElement)
		} else { self.stiffness = nil }
		if let childElement = xmlElement.elements(forName: "damping").first {
			self.damping = TargetableFloatType(xmlElement: childElement)
		} else { self.damping = nil }
		if let childElement = xmlElement.elements(forName: "target_value").first {
			self.targetValue = TargetableFloatType(xmlElement: childElement)
		} else { self.targetValue = nil }
	}

}
	/**
												The angular spring properties.
												*/
	let angular: Angular?

	/**
*/
class Linear {


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


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "stiffness").first {
			self.stiffness = TargetableFloatType(xmlElement: childElement)
		} else { self.stiffness = nil }
		if let childElement = xmlElement.elements(forName: "damping").first {
			self.damping = TargetableFloatType(xmlElement: childElement)
		} else { self.damping = nil }
		if let childElement = xmlElement.elements(forName: "target_value").first {
			self.targetValue = TargetableFloatType(xmlElement: childElement)
		} else { self.targetValue = nil }
	}

}
	/**
												The linear spring properties.
												*/
	let linear: Linear?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "angular").first {
			self.angular = Angular(xmlElement: childElement)
		} else { self.angular = nil }
		if let childElement = xmlElement.elements(forName: "linear").first {
			self.linear = Linear(xmlElement: childElement)
		} else { self.linear = nil }
	}

}
	/**
									Spring, based on distance ("LINEAR") or angle ("ANGULAR"). 
									*/
	let spring: Spring?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "enabled").first {
			self.enabled = Enabled(xmlElement: childElement)
		} else { self.enabled = nil }
		if let childElement = xmlElement.elements(forName: "interpenetrate").first {
			self.interpenetrate = Interpenetrate(xmlElement: childElement)
		} else { self.interpenetrate = nil }
		if let childElement = xmlElement.elements(forName: "limits").first {
			self.limits = Limits(xmlElement: childElement)
		} else { self.limits = nil }
		if let childElement = xmlElement.elements(forName: "spring").first {
			self.spring = Spring(xmlElement: childElement)
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


	init(xmlElement: NSXMLElement) {
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.refAttachment = RefAttachment(xmlElement: xmlElement.elements(forName: "ref_attachment").first!)
		self.attachment = Attachment(xmlElement: xmlElement.elements(forName: "attachment").first!)
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			Nodes embody the hierarchical relationship of elements in the scene.
			*/
class NodeType {
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


	init(xmlElement: NSXMLElement) {
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
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.instanceCamera = xmlElement.elements(forName: "instance_camera").map { InstanceCameraType(xmlElement: $0) }
		self.instanceController = xmlElement.elements(forName: "instance_controller").map { InstanceControllerType(xmlElement: $0) }
		self.instanceGeometry = xmlElement.elements(forName: "instance_geometry").map { InstanceGeometryType(xmlElement: $0) }
		self.instanceLight = xmlElement.elements(forName: "instance_light").map { InstanceLightType(xmlElement: $0) }
		self.instanceNode = xmlElement.elements(forName: "instance_node").map { InstanceNodeType(xmlElement: $0) }
		self.node = xmlElement.elements(forName: "node").map { NodeType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_nodes element declares a module of node elements.
			*/
class LibraryNodesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.node = xmlElement.elements(forName: "node").map { NodeType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The visual_scene element declares the base of the visual_scene hierarchy or scene graph. The 
			scene contains elements that comprise much of the visual and transformational information 
			content as created by the authoring tools.
			*/
class VisualSceneType {
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
class EvaluateScene {
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
class Render {
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
class InstanceMaterial {
	/**URL to a material		*/
	let url: String
	/**
*/
class TechniqueOverride {
	/**technique*/
	let ref: String

	/**Explicitly select one pass.  If empty then use all passes of the technique.*/
	let pass: String?



	init(xmlElement: NSXMLElement) {
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
class Bind {
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



	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let childElement = xmlElement.elements(forName: "technique_override").first {
			self.techniqueOverride = TechniqueOverride(xmlElement: childElement)
		} else { self.techniqueOverride = nil }
		self.bind = xmlElement.elements(forName: "bind").map { Bind(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
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
			self.instanceMaterial = InstanceMaterial(xmlElement: childElement)
		} else { self.instanceMaterial = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
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
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.render = xmlElement.elements(forName: "render").map { Render(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**The evaluate_scene element declares information specifying how to evaluate this visual_scene. There may be any number of evaluate_scene elements.  They are evaluated in order and particular one may be disabled via setting enabled=false.
						*/
	let evaluateScene: [EvaluateScene]


	/**
						The extra element may appear any number of times.
						*/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.node = xmlElement.elements(forName: "node").map { NodeType(xmlElement: $0) }
		self.evaluateScene = xmlElement.elements(forName: "evaluate_scene").map { EvaluateScene(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_visual_scenes element declares a module of visual_scene elements.
			*/
class LibraryVisualScenesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.visualScene = xmlElement.elements(forName: "visual_scene").map { VisualSceneType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			This element allows for describing simulated bodies that do not deform. These bodies may or may 
			not be connected by constraints (hinge, ball-joint etc.).  Rigid-bodies, constraints etc. are 
			encapsulated in physics_model elements to allow for instantiating complex models.
			*/
class RigidBodyType {
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
class TechniqueCommon {

	/**
*/
class Dynamic {


	let data: Bool

	init(xmlElement: NSXMLElement) {
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
class MassFrame {




	init(xmlElement: NSXMLElement) {
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
class Shape {

	/**
*/
class Hollow {


	let data: Bool

	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "hollow").first {
			self.hollow = Hollow(xmlElement: childElement)
		} else { self.hollow = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "density").first {
			self.density = TargetableFloatType(xmlElement: childElement)
		} else { self.density = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/**
									This element allows for describing components of a rigid_body.
									*/
	let shape: [Shape]


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "dynamic").first {
			self.dynamic = Dynamic(xmlElement: childElement)
		} else { self.dynamic = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "mass_frame").first {
			self.massFrame = MassFrame(xmlElement: childElement)
		} else { self.massFrame = nil }
		if let childElement = xmlElement.elements(forName: "inertia").first {
			self.inertia = TargetableFloat3Type(xmlElement: childElement)
		} else { self.inertia = nil }
		self.shape = xmlElement.elements(forName: "shape").map { Shape(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		self.sid = SidType(xmlElement.attribute(forName: "sid")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			This element allows instancing a rigid_body within an instance_physics_model. 
			*/
class InstanceRigidBodyType {
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
class TechniqueCommon {


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
class Dynamic {


	let data: Bool

	init(xmlElement: NSXMLElement) {
		self.data = Bool(xmlElement.stringValue!)!
	}

}
	/***/
	let dynamic: Dynamic?


	/***/
	let mass: TargetableFloatType?

	/**
*/
class MassFrame {




	init(xmlElement: NSXMLElement) {
	}

}
	/***/
	let massFrame: MassFrame?


	/***/
	let inertia: TargetableFloat3Type?

	/**
*/
class Shape {

	/**
*/
class Hollow {


	let data: Bool

	init(xmlElement: NSXMLElement) {
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


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "hollow").first {
			self.hollow = Hollow(xmlElement: childElement)
		} else { self.hollow = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "density").first {
			self.density = TargetableFloatType(xmlElement: childElement)
		} else { self.density = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
	/***/
	let shape: [Shape]


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "angular_velocity").first {
			self.angularVelocity = Float3Type(childElement.stringValue!)!
		} else { self.angularVelocity = nil }
		if let childElement = xmlElement.elements(forName: "velocity").first {
			self.velocity = Float3Type(childElement.stringValue!)!
		} else { self.velocity = nil }
		if let childElement = xmlElement.elements(forName: "dynamic").first {
			self.dynamic = Dynamic(xmlElement: childElement)
		} else { self.dynamic = nil }
		if let childElement = xmlElement.elements(forName: "mass").first {
			self.mass = TargetableFloatType(xmlElement: childElement)
		} else { self.mass = nil }
		if let childElement = xmlElement.elements(forName: "mass_frame").first {
			self.massFrame = MassFrame(xmlElement: childElement)
		} else { self.massFrame = nil }
		if let childElement = xmlElement.elements(forName: "inertia").first {
			self.inertia = TargetableFloat3Type(xmlElement: childElement)
		} else { self.inertia = nil }
		self.shape = xmlElement.elements(forName: "shape").map { Shape(xmlElement: $0) }
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


	init(xmlElement: NSXMLElement) {
		self.body = String(xmlElement.attribute(forName: "body")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.target = String(xmlElement.attribute(forName: "target")!.stringValue!)
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			This element allows instancing physics model within another physics model, or in a physics scene.
			*/
class InstancePhysicsModelType {
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


	init(xmlElement: NSXMLElement) {
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
		self.instanceForceField = xmlElement.elements(forName: "instance_force_field").map { InstanceForceFieldType(xmlElement: $0) }
		self.instanceRigidBody = xmlElement.elements(forName: "instance_rigid_body").map { InstanceRigidBodyType(xmlElement: $0) }
		self.instanceRigidConstraint = xmlElement.elements(forName: "instance_rigid_constraint").map { InstanceRigidConstraintType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			This element allows for building complex combinations of rigid-bodies and constraints that 
			may be instantiated multiple times.
			*/
class PhysicsModelType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.rigidBody = xmlElement.elements(forName: "rigid_body").map { RigidBodyType(xmlElement: $0) }
		self.rigidConstraint = xmlElement.elements(forName: "rigid_constraint").map { RigidConstraintType(xmlElement: $0) }
		self.instancePhysicsModel = xmlElement.elements(forName: "instance_physics_model").map { InstancePhysicsModelType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_physics_models element declares a module of physics_model elements.
			*/
class LibraryPhysicsModelsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.physicsModel = xmlElement.elements(forName: "physics_model").map { PhysicsModelType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class PhysicsSceneType {
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
class TechniqueCommon {


	/**
									The gravity vector to use for the physics_scene.
									*/
	let gravity: TargetableFloat3Type?


	/**
									The time_step for the physics_scene.
									*/
	let timeStep: TargetableFloatType?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "gravity").first {
			self.gravity = TargetableFloat3Type(xmlElement: childElement)
		} else { self.gravity = nil }
		if let childElement = xmlElement.elements(forName: "time_step").first {
			self.timeStep = TargetableFloatType(xmlElement: childElement)
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.instanceForceField = xmlElement.elements(forName: "instance_force_field").map { InstanceForceFieldType(xmlElement: $0) }
		self.instancePhysicsModel = xmlElement.elements(forName: "instance_physics_model").map { InstancePhysicsModelType(xmlElement: $0) }
		self.techniqueCommon = TechniqueCommon(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_physics_scenes element declares a module of physics_scene elements.
			*/
class LibraryPhysicsScenesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.physicsScene = xmlElement.elements(forName: "physics_scene").map { PhysicsSceneType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class KinematicsNewparamType {
	/***/
	let sid: SidType?



	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
	}

}
/**
*/
class KinematicsFrameType {
	/***/
	let link: String?



	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "link") {
			self.link = String(attribute.stringValue!)
		} else { self.link = nil }
	}

}
/**
*/
class CommonParamType {


	let data: String

	init(xmlElement: NSXMLElement) {
		self.data = String(xmlElement.stringValue!)
	}

}
/**
*/
class CommonIntOrParamType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class CommonBoolOrParamType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class CommonFloatOrParamType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class KinematicsLimitsType {


	/***/
	let min: CommonFloatOrParamType


	/***/
	let max: CommonFloatOrParamType


	init(xmlElement: NSXMLElement) {
		self.min = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "min").first!)
		self.max = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "max").first!)
	}

}
/**
*/
class CommonSidrefOrParamType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class BindJointAxisType {
	/***/
	let target: String?

	/***/
	let axis: CommonSidrefOrParamType


	/***/
	let value: CommonFloatOrParamType


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "target") {
			self.target = String(attribute.stringValue!)
		} else { self.target = nil }
		self.axis = CommonSidrefOrParamType(xmlElement: xmlElement.elements(forName: "axis").first!)
		self.value = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "value").first!)
	}

}
/**
*/
class BindKinematicsModelType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class KinematicsConnectParamType {
	/***/
	let ref: String



	init(xmlElement: NSXMLElement) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
class KinematicsSetparamType {
	/***/
	let ref: String



	init(xmlElement: NSXMLElement) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
class InstanceKinematicsSceneType {
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


	init(xmlElement: NSXMLElement) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0) }
		self.bindKinematicsModel = xmlElement.elements(forName: "bind_kinematics_model").map { BindKinematicsModelType(xmlElement: $0) }
		self.bindJointAxis = xmlElement.elements(forName: "bind_joint_axis").map { BindJointAxisType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class KinematicsIndexType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class KinematicsParamType {
	/***/
	let ref: String



	init(xmlElement: NSXMLElement) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
class KinematicsBindType {
	/***/
	let symbol: String



	init(xmlElement: NSXMLElement) {
		self.symbol = String(xmlElement.attribute(forName: "symbol")!.stringValue!)
	}

}
/**
*/
class MotionAxisInfoType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.axis = String(xmlElement.attribute(forName: "axis")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "speed").first {
			self.speed = CommonFloatOrParamType(xmlElement: childElement)
		} else { self.speed = nil }
		if let childElement = xmlElement.elements(forName: "acceleration").first {
			self.acceleration = CommonFloatOrParamType(xmlElement: childElement)
		} else { self.acceleration = nil }
		if let childElement = xmlElement.elements(forName: "deceleration").first {
			self.deceleration = CommonFloatOrParamType(xmlElement: childElement)
		} else { self.deceleration = nil }
		if let childElement = xmlElement.elements(forName: "jerk").first {
			self.jerk = CommonFloatOrParamType(xmlElement: childElement)
		} else { self.jerk = nil }
	}

}
/**
*/
class InstanceKinematicsModelType {
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


	init(xmlElement: NSXMLElement) {
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class InstanceArticulatedSystemType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.url = String(xmlElement.attribute(forName: "url")!.stringValue!)
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class KinematicsSceneType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.instanceKinematicsModel = xmlElement.elements(forName: "instance_kinematics_model").map { InstanceKinematicsModelType(xmlElement: $0) }
		self.instanceArticulatedSystem = xmlElement.elements(forName: "instance_articulated_system").map { InstanceArticulatedSystemType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class LibraryKinematicsScenesType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.kinematicsScene = xmlElement.elements(forName: "kinematics_scene").map { KinematicsSceneType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class CommonFloat2OrParamType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class MotionEffectorInfoType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.bind = xmlElement.elements(forName: "bind").map { KinematicsBindType(xmlElement: $0) }
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0) }
		self.setparam = xmlElement.elements(forName: "setparam").map { KinematicsSetparamType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "speed").first {
			self.speed = CommonFloat2OrParamType(xmlElement: childElement)
		} else { self.speed = nil }
		if let childElement = xmlElement.elements(forName: "acceleration").first {
			self.acceleration = CommonFloat2OrParamType(xmlElement: childElement)
		} else { self.acceleration = nil }
		if let childElement = xmlElement.elements(forName: "deceleration").first {
			self.deceleration = CommonFloat2OrParamType(xmlElement: childElement)
		} else { self.deceleration = nil }
		if let childElement = xmlElement.elements(forName: "jerk").first {
			self.jerk = CommonFloat2OrParamType(xmlElement: childElement)
		} else { self.jerk = nil }
	}

}
/**
*/
class MotionTechniqueType {


	/***/
	let axisInfo: [MotionAxisInfoType]


	/***/
	let effectorInfo: MotionEffectorInfoType?


	init(xmlElement: NSXMLElement) {
		self.axisInfo = xmlElement.elements(forName: "axis_info").map { MotionAxisInfoType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "effector_info").first {
			self.effectorInfo = MotionEffectorInfoType(xmlElement: childElement)
		} else { self.effectorInfo = nil }
	}

}
/**
*/
class MotionType {


	/***/
	let instanceArticulatedSystem: InstanceArticulatedSystemType


	/***/
	let techniqueCommon: MotionTechniqueType


	/***/
	let technique: [TechniqueType]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.instanceArticulatedSystem = InstanceArticulatedSystemType(xmlElement: xmlElement.elements(forName: "instance_articulated_system").first!)
		self.techniqueCommon = MotionTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class MinmaxType {


	let data: FloatType

	init(xmlElement: NSXMLElement) {
		self.data = FloatType(xmlElement.stringValue!)!
	}

}
/**
*/
class JointLimitsType {


	/***/
	let min: MinmaxType?


	/***/
	let max: MinmaxType?


	init(xmlElement: NSXMLElement) {
		if let childElement = xmlElement.elements(forName: "min").first {
			self.min = MinmaxType(xmlElement: childElement)
		} else { self.min = nil }
		if let childElement = xmlElement.elements(forName: "max").first {
			self.max = MinmaxType(xmlElement: childElement)
		} else { self.max = nil }
	}

}
/**
*/
class AxisType {


	let data: Float3Type

	init(xmlElement: NSXMLElement) {
		self.data = Float3Type(xmlElement.stringValue!)!
	}

}
/**
*/
class AxisConstraintType {
	/***/
	let sid: SidType?

	/***/
	let axis: AxisType


	/***/
	let limits: JointLimitsType?


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.axis = AxisType(xmlElement: xmlElement.elements(forName: "axis").first!)
		if let childElement = xmlElement.elements(forName: "limits").first {
			self.limits = JointLimitsType(xmlElement: childElement)
		} else { self.limits = nil }
	}

}
/**
*/
class JointType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let sid: SidType?

	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class LibraryJointsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.joint = xmlElement.elements(forName: "joint").map { JointType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class FormulaTechniqueType {




	init(xmlElement: NSXMLElement) {
	}

}
/**
*/
class FormulaNewparamType {
	/***/
	let sid: SidType?



	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
	}

}
/**
*/
class FormulaSetparamType {
	/***/
	let ref: String



	init(xmlElement: NSXMLElement) {
		self.ref = String(xmlElement.attribute(forName: "ref")!.stringValue!)
	}

}
/**
*/
class InstanceFormulaType {
	/***/
	let sid: SidType?

	/***/
	let name: String?

	/***/
	let url: String?

	/***/
	let setparam: [FormulaSetparamType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "url") {
			self.url = String(attribute.stringValue!)
		} else { self.url = nil }
		self.setparam = xmlElement.elements(forName: "setparam").map { FormulaSetparamType(xmlElement: $0) }
	}

}
/**
			The animation_clip element defines a section of the animation curves to be used together as 
			an animation clip.
			*/
class AnimationClipType {
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


	init(xmlElement: NSXMLElement) {
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
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.instanceAnimation = xmlElement.elements(forName: "instance_animation").map { InstanceWithExtraType(xmlElement: $0) }
		self.instanceFormula = xmlElement.elements(forName: "instance_formula").map { InstanceFormulaType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
			The library_animation_clips element declares a module of animation_clip elements.
			*/
class LibraryAnimationClipsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.animationClip = xmlElement.elements(forName: "animation_clip").map { AnimationClipType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class FormulaType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		self.newparam = xmlElement.elements(forName: "newparam").map { FormulaNewparamType(xmlElement: $0) }
		self.target = CommonFloatOrParamType(xmlElement: xmlElement.elements(forName: "target").first!)
		self.techniqueCommon = FormulaTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
	}

}
/**
*/
class KinematicsModelTechniqueType {


	/***/
	let newparam: [KinematicsNewparamType]


	/***/
	let link: [LinkType]


	init(xmlElement: NSXMLElement) {
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0) }
		self.link = xmlElement.elements(forName: "link").map { LinkType(xmlElement: $0) }
	}

}
/**
*/
class KinematicsModelType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.techniqueCommon = KinematicsModelTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class LibraryKinematicsModelsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.kinematicsModel = xmlElement.elements(forName: "kinematics_model").map { KinematicsModelType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class KinematicsAxisInfoType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "sid") {
			self.sid = SidType(attribute.stringValue!)
		} else { self.sid = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		self.axis = String(xmlElement.attribute(forName: "axis")!.stringValue!)
		self.newparam = xmlElement.elements(forName: "newparam").map { KinematicsNewparamType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "active").first {
			self.active = CommonBoolOrParamType(xmlElement: childElement)
		} else { self.active = nil }
		if let childElement = xmlElement.elements(forName: "locked").first {
			self.locked = CommonBoolOrParamType(xmlElement: childElement)
		} else { self.locked = nil }
		self.index = xmlElement.elements(forName: "index").map { KinematicsIndexType(xmlElement: $0) }
		if let childElement = xmlElement.elements(forName: "limits").first {
			self.limits = KinematicsLimitsType(xmlElement: childElement)
		} else { self.limits = nil }
	}

}
/**
*/
class KinematicsTechniqueType {


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


	init(xmlElement: NSXMLElement) {
		self.axisInfo = xmlElement.elements(forName: "axis_info").map { KinematicsAxisInfoType(xmlElement: $0) }
		self.frameOrigin = KinematicsFrameType(xmlElement: xmlElement.elements(forName: "frame_origin").first!)
		self.frameTip = KinematicsFrameType(xmlElement: xmlElement.elements(forName: "frame_tip").first!)
		if let childElement = xmlElement.elements(forName: "frame_tcp").first {
			self.frameTcp = KinematicsFrameType(xmlElement: childElement)
		} else { self.frameTcp = nil }
		if let childElement = xmlElement.elements(forName: "frame_object").first {
			self.frameObject = KinematicsFrameType(xmlElement: childElement)
		} else { self.frameObject = nil }
	}

}
/**
*/
class KinematicsType {


	/***/
	let instanceKinematicsModel: [InstanceKinematicsModelType]


	/***/
	let techniqueCommon: KinematicsTechniqueType


	/***/
	let technique: [TechniqueType]


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		self.instanceKinematicsModel = xmlElement.elements(forName: "instance_kinematics_model").map { InstanceKinematicsModelType(xmlElement: $0) }
		self.techniqueCommon = KinematicsTechniqueType(xmlElement: xmlElement.elements(forName: "technique_common").first!)
		self.technique = xmlElement.elements(forName: "technique").map { TechniqueType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class ArticulatedSystemType {
	/***/
	let id: String?

	/***/
	let name: String?

	/***/
	let asset: AssetType?


	/***/
	let extra: [ExtraType]


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class LibraryArticulatedSystemsType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.articulatedSystem = xmlElement.elements(forName: "articulated_system").map { ArticulatedSystemType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}
/**
*/
class LibraryFormulasType {
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


	init(xmlElement: NSXMLElement) {
		if let attribute = xmlElement.attribute(forName: "id") {
			self.id = String(attribute.stringValue!)
		} else { self.id = nil }
		if let attribute = xmlElement.attribute(forName: "name") {
			self.name = String(attribute.stringValue!)
		} else { self.name = nil }
		if let childElement = xmlElement.elements(forName: "asset").first {
			self.asset = AssetType(xmlElement: childElement)
		} else { self.asset = nil }
		self.formula = xmlElement.elements(forName: "formula").map { FormulaType(xmlElement: $0) }
		self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0) }
	}

}