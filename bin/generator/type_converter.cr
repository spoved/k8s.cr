class Generator
  def convert_type(kind : String, required = false)
    t = case kind
        when "object"
          "::Hash(String, String)"
        when "boolean"
          "::Bool"
        when "integer", "number"
          "Int32"
        when "resource"
          "::K8S::Kubernetes::Resource"
        else
          # pp kind.to_s.camelcase
          kind.to_s.camelcase
        end
    t += " | Nil" unless required
    t
  end

  def convert_type(arg : FunctionArgument)
    t = if arg.prop.nil?
          definition_ref(arg.ref) || convert_type(arg.type.to_s, true)
        else
          convert_type(arg.prop.not_nil!, true)
        end
    t += " | Nil" unless arg.required?
    # Log.trace { "Converted type 1: #{t}" }
    t
  end

  def convert_type(param : Swagger::Path::Parameter)
    t = definition_ref(param.schema.try(&._ref)) ||
        convert_type(param.type.to_s, true)
    # t = "::#{base_class}::#{t}"
    t += " | Nil" unless param.required
    # Log.trace { "Converted type 2: #{t}" }
    t
  end

  def convert_type(property : Swagger::Definition::Property, required : Bool = true)
    # debugger
    t = if ref = definition_ref(property._ref)
          ref
        elsif property.x_kubernetes_preserve_unknown_fields
          "::AnyHash::JSON"
        elsif property.x_kubernetes_int_or_string
          "::Int32 | ::String"
        elsif property.type.to_s == "array"
          "::Array(#{convert_type(property.items.as(Swagger::Definition::Property))})"
        elsif property.type.to_s == "object"
          types = Array(String).new
          types.concat property.properties.values.map { |x| convert_type(x.as(Swagger::Definition::Property)).as(String) }
          if property.additional_properties
            types << convert_type(property.additional_properties.not_nil!)
          end

          unless property.any_of.empty?
            types.concat property.any_of.map { |x| convert_type(x.as(Swagger::Definition::Property)).as(String) }
          end

          unless property.all_of.empty?
            types.concat property.all_of.map { |x| convert_type(x.as(Swagger::Definition::Property)).as(String) }
          end

          types.uniq!.reject!(&.empty?)

          if types.empty?
            pp property
            raise "No types found for property"
          end

          "::Hash(String, #{types.join(" | ")})"
          # elsif property.additional_properties
          #   "Hash(String, #{convert_type(property.additional_properties.not_nil!)})"
        else
          convert_type(property.type.to_s, true)
        end
    t += " | Nil" unless required
    # Log.trace { "Converted type 3: #{t}" }
    t
  end
end
