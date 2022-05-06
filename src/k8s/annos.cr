# Defines the kubernetes group/version of the object if it is a resource.
annotation ::K8S::GroupVersionKind; end
# Defines a list of properties that are included in this kubernetes object.
#
# ```
# @[::K8S::ObjectProperties(
#   spec: {name: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Internals::GenericObject, description: "The desired behavior of this daemon set. ...."},
#   status: {name: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::Internals::GenericObject, description: "The current status of this daemon set. ...."}
# )]
# ```
annotation ::K8S::ObjectProperties; end

annotation ::K8S::ObjectProperty; end
