class Generator::FunctionArgument
  getter name : String
  getter type : String?
  getter ref : String? = nil
  getter? required : Bool = false
  property default : String? = nil
  getter prop : Swagger::Definition::Property? = nil

  def initialize(name : String, prop : Swagger::Definition::Property, definition : Swagger::Definition, *, ivar = false)
    @prop = prop
    initialize name, required: definition.required.includes?(name), type: prop.type.to_s, ref: prop._ref, ivar: ivar
  end

  def initialize(param : Swagger::Path::Parameter)
    initialize name: param.name, required: param.required, type: param.type, ref: param.schema.try(&._ref)
  end

  def initialize(name : String, @type : String?, @required : Bool = false, @default : String? = nil, @ref : String? = nil, *, ivar = false)
    name = crystalize_name(name)
    @name = ivar ? "@#{name}" : name
  end

  def first_value?
    required? && !default
  end
end
