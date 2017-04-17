# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# DeleteOptions may be provided when deleting an API object.
class K8S::V1_6_0::Apimachinery::Apis::Meta::V1::DeleteOptions
  # The duration in seconds before the object should be deleted.Value must be non-negative integer.The value zero indicates delete immediately.If this value is nil, the default grace period for the specified type will be used.Defaults to a per object value if not specified.zero means delete immediately.
  property grace_period_seconds : Int32?

  # Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7.Should the dependent objects be orphaned.If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list.Either this field or PropagationPolicy may be set, but not both.
  property orphan_dependents : Bool?

  # Must be fulfilled before a deletion is carried out.If not possible, a 409 Conflict status will be returned.
  property preconditions : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Preconditions

  # Whether and how garbage collection will be performed.Either this field or OrphanDependents may be set, but not both.The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy.
  property propagation_policy : String?

  YAML.mapping({
    api_version:          {type: String, default: "DeleteOptions", key: apiVersion, getter: false, setter: false},
    kind:                 {type: String, default: "v1", getter: false, setter: false},
    grace_period_seconds: {type: Int32, nilable: true, key: gracePeriodSeconds, getter: false, setter: false},
    orphan_dependents:    {type: Bool, nilable: true, key: orphanDependents, getter: false, setter: false},
    preconditions:        {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Preconditions, nilable: true, key: preconditions, getter: false, setter: false},
    propagation_policy:   {type: String, nilable: true, key: propagationPolicy, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version:          {type: String, default: "DeleteOptions", key: apiVersion, getter: false, setter: false},
    kind:                 {type: String, default: "v1", getter: false, setter: false},
    grace_period_seconds: {type: Int32, nilable: true, key: gracePeriodSeconds, getter: false, setter: false},
    orphan_dependents:    {type: Bool, nilable: true, key: orphanDependents, getter: false, setter: false},
    preconditions:        {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Preconditions, nilable: true, key: preconditions, getter: false, setter: false},
    propagation_policy:   {type: String, nilable: true, key: propagationPolicy, getter: false, setter: false},
  }, true)

  def initialize(@grace_period_seconds = nil, @orphan_dependents = nil, @preconditions = nil, @propagation_policy = nil)
    @api_version = "DeleteOptions"
    @kind = "v1"
  end
end
