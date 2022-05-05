require "../spec_helper"

::K8S::Kubernetes::Resource.define_object("ImageSpec", "K8S::Types", [
  {name: "name", kind: String, nilable: false},
  {name: "pull_policy", kind: String, nilable: true, key: "imagePullPolicy"},
  {name: "pull_secret", kind: String, nilable: true, key: "imagePullSecret"},
])

Spectator.describe K8S::Kubernetes::Object do
  context "#initialize" do
    it "should create a new object" do
      image = K8S::Types::ImageSpec.new(
        name: "nginx:latest",
        pull_policy: "IfNotPresent",
      )
      expect(image.name).to eq("nginx:latest")
      expect(image.pull_policy).to eq "IfNotPresent"
    end

    it "should handle cammel case keys" do
      image = K8S::Types::ImageSpec.new(
        name: "nginx:latest",
        imagePullPolicy: "IfNotPresent",
      )
      expect(image.name).to eq("nginx:latest")
      expect(image.pull_policy).to eq "IfNotPresent"
    end
  end
end
