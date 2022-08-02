class Generator::Definition
  # Will apply any overrides before generating the class
  def apply_overrides
    # FIXME: I dont think this works, as new resources will need to be created with these fields
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
end
