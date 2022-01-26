class ::K8S::Kubernetes::Resource::Object < ::K8S::Kubernetes::Resource
  # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
  def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
  end

  # :ditto:
  def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?).not_nil!
  end

  # :ditto:
  def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
  end

  # :ditto:
  def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    self.["metadata"] = value
  end
end
