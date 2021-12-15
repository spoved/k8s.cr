class Generator::Definition
  # Will apply any overrides before generating the class
  def apply_overrides
    # FIXME: I dont think this, as new resources will need to be created with these fields
    # but querying them can return nil
    remove_required_fields(values: {
      EndpointSlice: "endpoints",
      Event:         "eventTime",
      CSINodeSpec:   "drivers",
    })
  end

  macro remove_required_fields(values)
    {% for k, v in values %}
    if class_name =~ /::{{k.id}}$/ && properties["{{v.id}}"]?
      required.delete("{{v.id}}")
    end
    {% end %}
  end

  def apply_alliases
    case class_name
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrArray"
      file.puts %<alias #{class_name} = ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps | Array(ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps)>
      true
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrBool"
      file.puts %<alias #{class_name} = ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps | Bool>
      true
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrStringArray"
      file.puts %<alias #{class_name} = ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps | Array(String)>
      true
    when "Api::Core::V1::List"
      file.puts %<alias #{class_name} = ::K8S::Kubernetes::ResourceList>
      true
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::JSON"
      file.puts %<alias #{class_name} = ::JSON::Any>
      true
    else
      false
    end
  end
end
