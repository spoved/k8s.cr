require "log"

class K8S::CRD::Property
  include JSON::Serializable

  property description : String? = nil
  property type : String? = nil
  property format : String? = nil
  property default : ApiextensionsApiserver::Apis::Apiextensions::V1::Json | Nil = nil
  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil
  property required : Array(String) = Array(String).new
  property properties : Hash(String, Property) = {} of String => Property
  property nullable : Bool = false
  property items : Property? = nil
  @[JSON::Field(key: "additionalProperties")]
  property additional_properties : Property? = nil
  @[JSON::Field(key: "enum")]
  property _enum : Array(::JSON::Any)? = nil
  property any_of : Array(Property) = Array(Property).new
  property all_of : Array(Property) = Array(Property).new

  include_k8s_annos

  def initialize(@type, @default = nil); end

  def initialize(@type = nil, @default = nil, @description = nil, @required = Array(String).new, @format = nil, @_ref = nil, @nullable = false, @properties = {} of String => Property, @items = nil, @additional_properties = nil, @_enum = nil,
                 @x_kubernetes_embedded_resource = nil, @x_kubernetes_int_or_string = nil, @x_kubernetes_preserve_unknown_fields = nil,
                 @x_kubernetes_list_map_keys = nil, @x_kubernetes_list_type = nil, @x_kubernetes_map_type = nil,
                 @any_of = Array(Property).new, @all_of = Array(Property).new)
  end

  def to_swagger_def : Swagger::Definition
    Swagger::Definition.new(
      description: self.description,
      required: self.required.nil? ? Array(String).new : self.required.not_nil!,
      _ref: self._ref,
      properties: self.properties.transform_values(&.to_swagger_prop),
    )
  end

  def to_swagger_addprop : Swagger::Definition::Property::AdditionalProperties
    # if self.properties["routes"]?
    #   pp self.properties["routes"]
    #   pp self.properties["routes"].to_swagger_prop
    #   exit
    # end

    Swagger::Definition::Property::AdditionalProperties.new(
      type: self.type,
      description: self.description,
      _ref: self._ref,
      items: self.items.nil? ? nil : self.items.not_nil!.to_swagger_prop,
      required: self.required,
      properties: self.properties.transform_values(&.to_swagger_prop),
      additional_properties: additional_properties.nil? ? nil : additional_properties.not_nil!.to_swagger_addprop,
      _enum: self._enum,
      x_kubernetes_preserve_unknown_fields: self.x_kubernetes_preserve_unknown_fields,
      x_kubernetes_int_or_string: self.x_kubernetes_int_or_string,
      x_kubernetes_embedded_resource: self.x_kubernetes_embedded_resource,
      x_kubernetes_list_map_keys: self.x_kubernetes_list_map_keys,
      x_kubernetes_list_type: self.x_kubernetes_list_type,
      x_kubernetes_map_type: self.x_kubernetes_map_type,
      any_of: self.any_of.map(&.to_swagger_prop),
      all_of: self.all_of.map(&.to_swagger_prop),
    )
  end

  def to_swagger_prop : Swagger::Definition::Property
    # if self.properties["forwardingTimeouts"]?
    #   pp self.properties["forwardingTimeouts"]
    #   pp self.properties["forwardingTimeouts"].to_swagger_prop
    #   exit
    # end
    Swagger::Definition::Property.new(
      type: self.type,
      description: self.description,
      _ref: self._ref,
      items: self.items.nil? ? nil : self.items.not_nil!.to_swagger_prop,
      required: self.required,
      properties: self.properties.transform_values(&.to_swagger_prop),
      additional_properties: additional_properties.nil? ? nil : additional_properties.not_nil!.to_swagger_addprop,
      _enum: self._enum,
      x_kubernetes_preserve_unknown_fields: self.x_kubernetes_preserve_unknown_fields,
      x_kubernetes_int_or_string: self.x_kubernetes_int_or_string,
      x_kubernetes_embedded_resource: self.x_kubernetes_embedded_resource,
      x_kubernetes_list_map_keys: self.x_kubernetes_list_map_keys,
      x_kubernetes_list_type: self.x_kubernetes_list_type,
      x_kubernetes_map_type: self.x_kubernetes_map_type,
      any_of: self.any_of.map(&.to_swagger_prop),
      all_of: self.all_of.map(&.to_swagger_prop),
    )
  end

  def self.schema_props_to_def(props : Array(K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)) : Array(Property)
    props.map { |i| schema_props_to_def(i) }
  end

  def self.schema_props_to_def(obj : Bool) : Property
    Property.new(type: "boolean", default: true)
  end

  def self.schema_props_to_def(obj : Nil) : Nil
    nil
  end

  def self.schema_props_to_def(obj : K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps) : Property
    properties = obj.properties.nil? ? Hash(String, ::K8S::CRD::Property).new : obj.properties.not_nil!.transform_values { |v| schema_props_to_def(v).as(K8S::CRD::Property) }

    # unless obj.json_unmapped.empty?
    #   Log.warn { "Unmapped JSON fields: #{obj.json_unmapped.inspect}" }
    # end

    # unless obj.yaml_unmapped.empty?
    #   Log.warn { "Unmapped YAML fields: #{obj.json_unmapped.inspect}" }
    # end

    new(
      type: obj.type,
      default: obj.default,
      description: obj.description,
      required: obj.required.nil? ? Array(String).new : obj.required.not_nil!,
      format: obj.format,
      _ref: obj.ref,
      nullable: obj.nullable.nil? ? false : obj.nullable.as(Bool),
      properties: properties,
      items: obj.items.nil? ? nil : self.schema_props_to_def(obj.items.not_nil!).as(K8S::CRD::Property),
      additional_properties: obj.additional_properties.nil? ? nil : schema_props_to_def(obj.additional_properties),
      _enum: obj._enum.nil? ? nil : obj._enum.not_nil!.as(Array(JSON::Any::Type)).map { |i| JSON::Any.new(i) },
      x_kubernetes_embedded_resource: obj.x_kubernetes_embedded_resource,
      x_kubernetes_int_or_string: obj.x_kubernetes_int_or_string,
      x_kubernetes_preserve_unknown_fields: obj.x_kubernetes_preserve_unknown_fields,
      x_kubernetes_list_map_keys: obj.x_kubernetes_list_map_keys,
      x_kubernetes_list_type: obj.x_kubernetes_list_type,
      x_kubernetes_map_type: obj.x_kubernetes_map_type,
      any_of: obj.any_of.nil? ? Array(Property).new : obj.any_of.not_nil!.map { |i| schema_props_to_def(i).as(K8S::CRD::Property) },
      all_of: obj.all_of.nil? ? Array(Property).new : obj.all_of.not_nil!.map { |i| schema_props_to_def(i).as(K8S::CRD::Property) },
    )
  end
end
