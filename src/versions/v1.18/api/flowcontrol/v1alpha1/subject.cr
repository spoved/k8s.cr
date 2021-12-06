# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
  @[::K8S::Properties(
    group: {type: Api::Flowcontrol::V1alpha1::GroupSubject, nilable: true, key: "group", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    service_account: {type: Api::Flowcontrol::V1alpha1::ServiceAccountSubject, nilable: true, key: "serviceAccount", getter: false, setter: false},
    user: {type: Api::Flowcontrol::V1alpha1::UserSubject, nilable: true, key: "user", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1alpha1::Subject
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "group", emit_null: false)]
    @[::YAML::Field(key: "group", emit_null: false)]
    property group : Api::Flowcontrol::V1alpha1::GroupSubject | Nil

    # Required
    @[::JSON::Field(key: "kind", emit_null: true)]
    @[::YAML::Field(key: "kind", emit_null: true)]
    property kind : String

    @[::JSON::Field(key: "serviceAccount", emit_null: false)]
    @[::YAML::Field(key: "serviceAccount", emit_null: false)]
    property service_account : Api::Flowcontrol::V1alpha1::ServiceAccountSubject | Nil

    @[::JSON::Field(key: "user", emit_null: false)]
    @[::YAML::Field(key: "user", emit_null: false)]
    property user : Api::Flowcontrol::V1alpha1::UserSubject | Nil

    def initialize(*, @kind : String, @group : Api::Flowcontrol::V1alpha1::GroupSubject | Nil = nil, @service_account : Api::Flowcontrol::V1alpha1::ServiceAccountSubject | Nil = nil, @user : Api::Flowcontrol::V1alpha1::UserSubject | Nil = nil)
    end
  end
end
