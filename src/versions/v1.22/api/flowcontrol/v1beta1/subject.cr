# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
  class Api::Flowcontrol::V1beta1::Subject
    # `group` matches based on user group name.
    property group : Api::Flowcontrol::V1beta1::GroupSubject | Nil

    # `kind` indicates which one of the other fields is non-empty. Required
    property kind : String

    # `serviceAccount` matches ServiceAccounts.
    property service_account : Api::Flowcontrol::V1beta1::ServiceAccountSubject | Nil

    # `user` matches based on username.
    property user : Api::Flowcontrol::V1beta1::UserSubject | Nil

    ::YAML.mapping({
      group:           {type: Api::Flowcontrol::V1beta1::GroupSubject, nilable: true, key: "group", getter: false, setter: false},
      kind:            {type: String, nilable: false, key: "kind", getter: false, setter: false},
      service_account: {type: Api::Flowcontrol::V1beta1::ServiceAccountSubject, nilable: true, key: "serviceAccount", getter: false, setter: false},
      user:            {type: Api::Flowcontrol::V1beta1::UserSubject, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      group:           {type: Api::Flowcontrol::V1beta1::GroupSubject, nilable: true, key: "group", getter: false, setter: false},
      kind:            {type: String, nilable: false, key: "kind", getter: false, setter: false},
      service_account: {type: Api::Flowcontrol::V1beta1::ServiceAccountSubject, nilable: true, key: "serviceAccount", getter: false, setter: false},
      user:            {type: Api::Flowcontrol::V1beta1::UserSubject, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    def initialize(*, @kind : String, @group : Api::Flowcontrol::V1beta1::GroupSubject | Nil = nil, @service_account : Api::Flowcontrol::V1beta1::ServiceAccountSubject | Nil = nil, @user : Api::Flowcontrol::V1beta1::UserSubject | Nil = nil)
    end
  end
end
