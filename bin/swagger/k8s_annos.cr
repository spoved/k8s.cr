macro include_k8s_annos
  # x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
  @[::JSON::Field(key: "x-kubernetes-embedded-resource", emit_null: false)]
  property x_kubernetes_embedded_resource : Bool | Nil

  # x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:
  #
  # 1) anyOf:
  #    - type: integer
  #    - type: string
  # 2) allOf:
  #    - anyOf:
  #      - type: integer
  #      - type: string
  #    - ... zero or more
  @[::JSON::Field(key: "x-kubernetes-int-or-string", emit_null: false)]
  property x_kubernetes_int_or_string : Bool | Nil

  # x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.
  #
  # This tag MUST only be used on lists that have the "x-kubernetes-list-type" extension set to "map". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).
  #
  # The properties specified must either be required or have a default value, to ensure those properties are present for all list items.
  @[::JSON::Field(key: "x-kubernetes-list-map-keys", emit_null: false)]
  property x_kubernetes_list_map_keys : Array(String) | Nil

  # x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:
  #
  # 1) `atomic`: the list is treated as a single entity, like a scalar.
  #      Atomic lists will be entirely replaced when updated. This extension
  #      may be used on any type of list (struct, scalar, ...).
  # 2) `set`:
  #      Sets are lists that must not have multiple items with the same value. Each
  #      value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
  #      array with x-kubernetes-list-type `atomic`.
  # 3) `map`:
  #      These lists are like maps in that their elements have a non-index key
  #      used to identify them. Order is preserved upon merge. The map tag
  #      must only be used on a list with elements of type object.
  # Defaults to atomic for arrays.
  @[::JSON::Field(key: "x-kubernetes-list-type", emit_null: false)]
  property x_kubernetes_list_type : String | Nil

  # x-kubernetes-map-type annotates an object to further describe its topology. This extension must only be used when type is object and may have 2 possible values:
  #
  # 1) `granular`:
  #      These maps are actual maps (key-value pairs) and each fields are independent
  #      from each other (they can each be manipulated by separate actors). This is
  #      the default behaviour for all maps.
  # 2) `atomic`: the list is treated as a single entity, like a scalar.
  #      Atomic maps will be entirely replaced when updated.
  @[::JSON::Field(key: "x-kubernetes-map-type", emit_null: false)]
  property x_kubernetes_map_type : String | Nil

  # x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
  @[::JSON::Field(key: "x-kubernetes-preserve-unknown-fields", emit_null: false)]
  property x_kubernetes_preserve_unknown_fields : Bool | Nil

end
