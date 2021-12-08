require "./util"

module K8S::Hashdiff::CompareHashes
  extend self

  def call(obj1 : Hash(K, V), obj2 : Hash(T, L), **opts) forall K, V, T, L
    result = Array(DiffResult).new
    return result if obj1.empty? && obj2.empty?

    obj1_keys = Array(String | Symbol).new.concat obj1.keys
    obj2_keys = Array(String | Symbol).new.concat obj2.keys
    obj1_lookup = Hash(String, String | K | V | T | L | Nil).new
    obj2_lookup = Hash(String, String | K | V | T | L | Nil).new

    if opts[:indifferent]
      obj1_lookup = obj1.keys.to_h { |k| {k.to_s, k} }
      obj2_lookup = obj2.keys.to_h { |k| {k.to_s, k} }
      obj1_keys = obj1_keys.map { |k| k.is_a?(Symbol) ? k.to_s : k }
      obj2_keys = obj2_keys.map { |k| k.is_a?(Symbol) ? k.to_s : k }
    end

    added_keys = (obj2_keys - obj1_keys).sort_by(&.to_s)
    common_keys = (obj1_keys & obj2_keys).sort_by(&.to_s)
    deleted_keys = (obj1_keys - obj2_keys).sort_by(&.to_s)

    # add deleted properties
    deleted_keys.each do |k|
      k = opts[:indifferent] ? obj1_lookup[k] : k
      change_key = Hashdiff.prefix_append_key(k, **opts)
      result += [{"-", change_key, obj1[k]}]
    end

    # added properties
    added_keys.each do |k|
      change_key = Hashdiff.prefix_append_key(k, **opts)
      k = opts[:indifferent] ? obj2_lookup[k] : k
      result += [{"+", change_key, obj2[k]}]
    end

    # recursive comparison for common keys
    common_keys.each do |k|
      prefix = Hashdiff.prefix_append_key(k, **opts)
      k1 = opts[:indifferent] ? obj1_lookup[k] : k
      k2 = opts[:indifferent] ? obj2_lookup[k] : k
      Hashdiff.diff(obj1[k1]?, obj2[k2]?, **opts.merge(prefix: prefix)).each do |change|
        result += [change]
      end
    end

    result
  end
end
