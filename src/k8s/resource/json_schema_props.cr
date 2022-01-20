macro finished
  {% if (::K8S::Kubernetes::VERSION_MINOR == 1 && ::K8S::Kubernetes::VERSION_MAJOR <= 15) %}
  class ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
    def self.__deep_cast_value(value : K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps::ValueType)
      case value
      {% for typ in K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps::ValueType.union_types %}
        {% if typ.id =~ /^K8S::Object/ %}
        when K8S::Object
          value.as(K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
        {% elsif typ.id =~ /JSON::Any/ %}
        when {{typ.id.gsub(/JSON::Any/, "::JSON::Any")}}
          value.as({{typ.id.gsub(/JSON::Any/, "::JSON::Any")}})
        {% else %}
        when {{typ.id}}
          value.as({{typ.id}})
        {% end %}
      {% end %}
      when Array(K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
        value.map &.as(::K8S::Object(K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps::ValueType))
      when Hash(String, K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps)
        value.transform_values &.as(::K8S::Object(K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps::ValueType))
      else
        raise TypeError.new("cannot cast value of type #{value.class} to type V1beta1::JSONSchemaProps::ValueType")
      end
    end
  end
  {% end %}

  {% if (::K8S::Kubernetes::VERSION_MINOR == 1 && ::K8S::Kubernetes::VERSION_MAJOR >= 15) %}
  class ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps
    def self.__deep_cast_value(value : K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType)
      case value
      {% for typ in K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType.union_types %}
        {% if typ.id =~ /^K8S::Object/ %}
        when K8S::Object
          value.as(K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps)
        {% elsif typ.id =~ /JSON::Any/ %}
        when {{typ.id.gsub(/JSON::Any/, "::JSON::Any")}}
          value.as({{typ.id.gsub(/JSON::Any/, "::JSON::Any")}})
        {% else %}
        when {{typ.id}}
          value.as({{typ.id}})
        {% end %}
      {% end %}
      when Array(K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps)
        value.map &.as(::K8S::Object(K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType))
      when Hash(String, K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps)
        value.transform_values &.as(::K8S::Object(K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps::ValueType))
      else
        raise TypeError.new("cannot cast value of type #{value.class} to type V1::JSONSchemaProps::ValueType")
      end
    end
  end
  {% end %}
end
