require "hashdiff"

module Hashdiff
  def diff(obj1 : K8S::Resource, obj2 : K8S::Resource, **options)
    diff(obj1.to_h, obj2.to_h, **options)
  end
end
