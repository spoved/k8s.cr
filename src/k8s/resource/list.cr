class ::K8S::Kubernetes::Resource::List(T) < ::K8S::Kubernetes::Resource
  # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
  def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
  end

  # :ditto:
  def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
    self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?).not_nil!
  end

  # :ditto:
  def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
  end

  # :ditto:
  def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    self.["metadata"] = value
  end

  # List of MutatingWebhookConfiguration.
  def items : Array(::K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration)
    self.["items"].as(Array(::K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration))
  end

  # :ditto:
  def items! : Array(::K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration)
    self.["items"].as(Array(::K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration)).not_nil!
  end

  # :ditto:
  def items? : Array(::K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration)?
    self.["items"]?.as(Array(::K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration)?)
  end

  # :ditto:
  def items=(value : Array(::K8S::Api::Admissionregistration::V1::MutatingWebhookConfiguration))
    self.["items"] = value
  end
end
