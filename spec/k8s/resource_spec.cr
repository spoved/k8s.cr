require "spectator"
require "log"
require "../../src/k8s/resource"

Spectator.describe K8S::Kubernetes::Resource do
  context "#initialize" do
    it "takes another K8S::GenericObject, Hash or NamedTuple as an initial value" do
      # expect_raises K8S::Kubernetes::Resource::Error, %<apiVersion must be defined> do
      #   K8S::Kubernetes::Resource::Object.new(K8S::GenericObject.new({foo: {bar: true}}))
      # end

      # expect_raises K8S::Kubernetes::Resource::Error, %<kind must be defined> do
      #   K8S::Kubernetes::Resource::Object.new(K8S::GenericObject.new({apiVersion: "v1", foo: {bar: true}}))
      # end

      expect(K8S::Kubernetes::Resource::Object.new(K8S::GenericObject.new({
        apiVersion: "v1",
        kind:       "Foo",
        foo:        {bar: true},
      })).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})

      expect(K8S::Kubernetes::Resource::Object.new(
        {
          apiVersion: "v1",
          kind:       "Foo",
          foo:        {bar: true},
        }).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})

      expect(K8S::Kubernetes::Resource::Object.new({
        :apiVersion => "v1",
        :kind       => "Foo",
        :foo        => {:bar => true},
      }).to_h).to eq({"apiVersion" => "v1", "kind" => "Foo", "foo" => {"bar" => true}})
    end
  end

  context "serialization" do
    it "serializes to JSON" do
      expect(K8S::Kubernetes::Resource::Object.new({
        apiVersion: "v1",
        kind:       "Foo",
        foo:        {bar: true},
      }).to_json).to eq(%<{"apiVersion":"v1","kind":"Foo","foo":{"bar":true}}>)
    end
  end
end
