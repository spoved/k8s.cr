# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../runtime/raw_extension"

::K8S::Kubernetes::Resource.define_resource("", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("admission.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("apiextensions.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("apiregistration.k8s.io", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("apiregistration.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta2", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("authentication.k8s.io", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("authentication.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("authorization.k8s.io", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("authorization.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v2beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("batch", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("batch", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("batch", "v2alpha1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("certificates.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("events.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("extensions", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("imagepolicy.k8s.io", "v1alpha1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("policy", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1alpha1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("scheduling.k8s.io", "v1alpha1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("scheduling.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("settings.k8s.io", "v1alpha1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1alpha1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1beta1", "WatchEvent",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "object", kind: ::K8S::Apimachinery::Runtime::RawExtension, key: "object", nilable: false, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ],
  description: "Event represents a single event to a watched resource.",
)
