require "../spec_helper"
require "../load_version"

{% if ::K8S::Kubernetes::VERSION_MINOR == 1 && ::K8S::Kubernetes::VERSION_MAJOR >= 16 %}
Spectator.describe ::K8S::Kubernetes::WatchEvent do
  let(:raw_event) { ::K8S::Apimachinery::Apis::Meta::V1::WatchEvent.from_json(fixture("api", "watch-event.json")) }
  let(:subject) { ::K8S::Kubernetes::WatchEvent(K8S::Kubernetes::Resource) }
  let(:event) { subject.new(raw_event) }

  context "#initialize" do
    it "should initialize" do
      expect(event).to be_a(subject)
    end

    it "should set the resource" do
      expect(event.object).to be_a(K8S::Kubernetes::Resource)
      expect(event.object).to be_a(K8S::Api::Core::V1::Pod)
    end
  end
end
{% end %}