require "../spec_helper"
NAMESPACE_JSON = %<{"kind":"Namespace","apiVersion":"v1","metadata":{"name":"default","uid":"52c2b145-b686-4714-b12b-c7bf9434a1fc","resourceVersion":"6","creationTimestamp":"2021-11-09T19:15:58Z","managedFields":[{"manager":"k3s","operation":"Update","apiVersion":"v1","time":"2021-11-09T19:15:58Z","fieldsType":"FieldsV1","fieldsV1":{"f:status":{"f:phase":{}}}}]},"spec":{"finalizers":["kubernetes"]},"status":{"phase":"Active"}}>
extend FixtureHelpers

Spectator.describe K8S::Kubernetes::Resource do
  it "#from_json" do
    r = K8S::Kubernetes::Resource.from_json(fixture_path("apis", "namespace.json"))
    expect(r).to be_a(K8S::Api::Core::V1::Namespace)
  end

  it "#from_file" do
    r = K8S::Resource.from_file(fixture_path("stacks", "whoami.yaml"))
    expect(r.size).to eq(3)
    expect(r[0]).to be_a(K8S::Api::Apps::V1::Deployment)
    expect(r[1]).to be_a(K8S::Api::Core::V1::Service)
    expect(r[2]).to be_a(K8S::Api::Networking::V1::Ingress)
  end
end
