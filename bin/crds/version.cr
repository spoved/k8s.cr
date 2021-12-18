require "../swagger/**"

class K8S::CRD::Version
  getter group : String
  getter version : String
  getter kind : String
  getter definition : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion
  getter api_base : String
  getter full_api : String

  @properties : Hash(String, K8S::CRD::Property)? = nil

  def initialize(@group, @kind, @definition)
    @version = @definition.name
    @api_base = @group.split('.').reverse.join('.')
    @full_api = "#{@api_base}.#{@version}.#{@kind}"
  end

  private def schema
    self.definition.schema.not_nil!.open_apiv3_schema.not_nil!
  end

  def to_swagger_def : Swagger::Definition
    obj = self.schema
    properties = obj.properties.nil? ? Hash(String, K8S::CRD::Property).new : obj.properties.not_nil!.transform_values { |v| K8S::CRD::Property.schema_props_to_def(v).as(K8S::CRD::Property) }

    Swagger::Definition.new(
      description: obj.description,
      required: obj.required.nil? ? Array(String).new : obj.required.not_nil!,
      _ref: obj.ref,
      properties: properties.transform_values(&.to_swagger_prop),
      x_kubernetes_group_version_kind: [
        XKubernetesGroupVersionKind.new(
          group: self.group,
          version: self.version,
          kind: self.kind
        ),
      ]
    )
  end

  def to_swagger_defs : Hash(String, Swagger::Definition)
    sw_def = self.to_swagger_def
    defs = {
      full_api => sw_def,
    }

    self.properties.each do |name, prop|
      if prop.type.to_s == "object" && !prop.properties.empty?
        prop_def = prop.to_swagger_def
        ref_name = "#{full_api}#{name.camelcase}"
        sw_def.properties[name] = Swagger::Definition::Property.new(
          _ref: "#/definitions/#{ref_name}"
        )

        defs[ref_name] = prop_def
      end
    end

    defs
  end

  def properties
    raise "Undefined properties for #{self.full_api}" if schema.properties.nil?
    @properties ||= schema.properties.not_nil!.transform_values do |v|
      K8S::CRD::Property.schema_props_to_def(v)
    end
  end
end
