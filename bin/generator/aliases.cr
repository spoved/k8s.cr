class Generator
  getter api_aliases : Hash(String, Array(String)) = Hash(String, Array(String)).new

  def find_aliases(api_map)
    names = Hash(String, Array(String)).new

    api_map.each do |key, _|
      name = key.split('.').last
      # Skip lists
      next if name =~ /List$/
      names[name] = Array(String).new unless names[name]?
      names[name] << key
    end

    aliases = names.map do |_, apis|
      next if apis.size == 1
      definitions = apis.to_h { |api| {api, schema.definitions[api]} }
      _aliases = Array(Array(String)).new

      apis.each_combination(2).each do |_apis|
        api1, api2 = _apis.first, _apis.last
        if compare_apis(definitions[api1], definitions[api2])
          _aliases << _apis
        end
      end
      next if _aliases.empty?
      _aliases
    end

    process_alias_matches(aliases.reject(Nil))
  end

  private def compare_apis(api1, api2) : Bool
    api1_properties = api1.properties.map(&.[0]).sort!
    api2_properties = api2.properties.map(&.[0]).sort!
    (api1_properties == api2_properties &&
      api1.required.sort == api2.required.sort)
  end

  private def process_alias_matches(aliases : Array(Array(Array(String))))
    _api_aliases = Hash(String, Array(String)).new
    apis = aliases.flatten.uniq!

    apis.each do |api|
      _api_aliases[api] = Array(String).new unless _api_aliases[api]?

      aliases.each do |_alias_group|
        _alias_group.each do |_aliases|
          next unless _aliases.includes?(api)
          _api_aliases[api].concat(_aliases).uniq!
        end
      end
    end

    _api_aliases.keys.each do |api|
      _api_aliases[api].each do |_api|
        _api_aliases[_api] = Array(String).new unless _api_aliases[_api]?
        _api_aliases[_api] << api
        _api_aliases[_api].uniq!.sort!
      end
    end

    @api_aliases = _api_aliases.values.uniq!.sort!.to_h { |api| {api[0], api.reject(api[0])} }
  end

  private def api_version(name)
    name.sub(/^io\.k8s(\.[-a-z]+\.pkg)?\.apis?(\.core)?\./, "")
      .split(".")[0..-2].join("/")
  end

  def is_alias?(api) : String?
    api_aliases.each do |k, v|
      return k if v.includes?(api)
    end
    nil
  end

  # Will return the alias if the api is an alias, otherwise nil
  def default_alias?(class_name)
    case class_name
    when "Api::Core::V1::List"
      # TODO: Properly handle List alias
      class_name
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrArray"
      %<::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps | Array(::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps)>
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrBool"
      %<::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps | Bool>
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaPropsOrStringArray"
      %<::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps | Array(String)>
    when "ApiextensionsApiserver::Apis::Apiextensions::V1::Json"
      %<::JSON::Any::Type>
    when "ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaPropsOrArray"
      %<::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps | Array(::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps)>
    when "ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaPropsOrBool"
      %<::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps | Bool>
    when "ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaPropsOrStringArray"
      %<::#{base_class}::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JsonSchemaProps | Array(String)>
    when "ApiextensionsApiserver::Apis::Apiextensions::V1beta1::Json"
      %<::JSON::Any::Type>
    else
      nil
    end
  end
end
