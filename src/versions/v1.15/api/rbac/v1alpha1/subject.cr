# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Rbac::V1alpha1::Subject; end

module K8S
  # Namespace holding the types for `Api::Rbac::V1alpha1::Subject`.
  module Types::Api::Rbac::V1alpha1::Subject
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion holds the API group and version of the referenced subject. Defaults to "v1" for ServiceAccount subjects. Defaults to [["rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.]("rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.)](["rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.]("rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String?)
    # Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # Name of the object being referenced.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String?)
  end

  # Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion holds the API group and version of the referenced subject. Defaults to \"v1\" for ServiceAccount subjects. Defaults to [\"rbac.authorization.k8s.io/v1alpha1\" for User and Group subjects.](\"rbac.authorization.k8s.io/v1alpha1\" for User and Group subjects.)"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "Kind of object being referenced. Values defined by this API group are \"User\", \"Group\", and \"ServiceAccount\". If the Authorizer does not recognized the kind value, the Authorizer should report an error."},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name of the object being referenced."},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace of the referenced object.  If the object kind is non-namespace, such as \"User\" or \"Group\", and this value is not empty the Authorizer should report an error."},
  )]
  class Api::Rbac::V1alpha1::Subject < ::K8S::Types::Api::Rbac::V1alpha1::Subject::Instance
    include ::K8S::Types::Api::Rbac::V1alpha1::Subject
    include ::K8S::Kubernetes::Object

    # APIVersion holds the API group and version of the referenced subject. Defaults to "v1" for ServiceAccount subjects. Defaults to [["rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.]("rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.)](["rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.]("rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.))
    def api_version : String?
      self.["apiVersion"].as(String?)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String?).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # :ditto:
    def api_version=(value : String?)
      self.["apiVersion"] = value
    end

    # Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
    def kind : String
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String)
      self.["kind"] = value
    end

    # Name of the object being referenced.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
    def namespace : String?
      self.["namespace"].as(String?)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String?).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String?)
      self.["namespace"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
