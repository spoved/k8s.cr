# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
  @[::K8S::Properties(
    group: {type: Api::Flowcontrol::V1beta1::GroupSubject, nilable: true, key: "group", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    service_account: {type: Api::Flowcontrol::V1beta1::ServiceAccountSubject, nilable: true, key: "serviceAccount", getter: false, setter: false},
    user: {type: Api::Flowcontrol::V1beta1::UserSubject, nilable: true, key: "user", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::Subject
    include ::JSON::Serializable
    include ::YAML::Serializable

    property group : Api::Flowcontrol::V1beta1::GroupSubject | Nil

    # Required
    property kind : String

    @[::JSON::Field(key: "serviceAccount")]
    @[::YAML::Field(key: "serviceAccount")]
    property service_account : Api::Flowcontrol::V1beta1::ServiceAccountSubject | Nil

    property user : Api::Flowcontrol::V1beta1::UserSubject | Nil

    def initialize(*, @kind : String, @group : Api::Flowcontrol::V1beta1::GroupSubject | Nil = nil, @service_account : Api::Flowcontrol::V1beta1::ServiceAccountSubject | Nil = nil, @user : Api::Flowcontrol::V1beta1::UserSubject | Nil = nil)
    end
  end
end
