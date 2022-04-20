require "../internals/hash_object"
require "../internals/array_object"

struct K8S::Kubernetes::Resource::ListWrapper(T) < K8S::Internals::ArrayObject(K8S::Internals::GenericObject, T)
  def wrap_value(value : V) : T
    T.new(value)
  end

  def unwrap_value(value : T) : V
    value.@__object__
  end

  def diff(other : K8S::Internals::ArrayObject | K8S::Kubernetes::Resource::ListWrapper)
    ::Hashdiff.diff(@__array__, other.to_a)
  end
end
