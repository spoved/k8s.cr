require "json"

class Swagger::Definition::Property
  include JSON::Serializable

  property description : String? = nil
  property type : String? = nil
  @[JSON::Field(key: "$ref")]
  property _ref : String? = nil
  property items : Property? = nil
  @[JSON::Field(key: "additionalProperties")]
  property additional_properties : AdditionalProperties? = nil
  @[JSON::Field(key: "enum")]
  property _enum : Array(JSON::Any)? = nil

  include_k8s_annos

  def initialize(*, @type : String? = nil, @description : String? = nil, @items : Property? = nil, @_ref : String? = nil,
                 @additional_properties = nil, @_enum = nil,
                 @x_kubernetes_embedded_resource = nil, @x_kubernetes_int_or_string = nil, @x_kubernetes_preserve_unknown_fields = nil,
                 @x_kubernetes_list_map_keys = nil, @x_kubernetes_list_type = nil, @x_kubernetes_map_type = nil)
  end

  class AdditionalProperties < Swagger::Definition::Property
    def initialize(*, @type : String? = nil, @description : String? = nil, @items : Property? = nil, @_ref : String? = nil, @additional_properties = nil, @_enum = nil,
                   @x_kubernetes_embedded_resource = nil, @x_kubernetes_int_or_string = nil, @x_kubernetes_preserve_unknown_fields = nil,
                   @x_kubernetes_list_map_keys = nil, @x_kubernetes_list_type = nil, @x_kubernetes_map_type = nil)
      super(type: type, description: description, items: items, _ref: _ref)
    end
  end
end
