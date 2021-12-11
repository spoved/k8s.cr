require "./hashdiff"

module K8S
  # Miscellaneous helpers
  module Util
    extend self
    PATH_TR_MAP = {"~" => "~0", "/" => "~1"}
    PATH_REGEX  = %r{(/|~(?!1))}

    # overwrite_arrays [Boolean] when encountering an array, replace the array with the new array
    # union_arrays [Boolean] when encountering an array, use Array#union to combine with the existing array
    # keep_existing [Boolean] prefer old value over new value
    # merge_nil_values [Boolean] overwrite an existing value with a nil value
    # merge_non_hash [Boolean] will merge `::K8S::Kubernetes::Resource` objects
    def deep_merge(input, other, overwrite_arrays = true, union_arrays = false, keep_existing = false, merge_nil_values = false, merge_non_hash = false)
      (other.keys | input.keys).to_h do |key|
        _deep_merge_value(key, input, other, overwrite_arrays,
          union_arrays, keep_existing, merge_nil_values,
          merge_non_hash)
      end
    end

    # ameba:disable Metrics/CyclomaticComplexity
    private def _deep_merge_value(key, input, other : Hash(L, W), overwrite_arrays = true,
                                  union_arrays = false, keep_existing = false,
                                  merge_nil_values = false, merge_non_hash = false) forall L, W
      me = input[key]?
      them = other[key]?

      Log.trace &.emit %<merging key: #{key}. Values: #{me.inspect} and #{them.inspect}>,
        overwrite_arrays: overwrite_arrays, union_arrays: union_arrays,
        keep_existing: keep_existing, merge_nil_values: merge_nil_values,
        merge_non_hash: merge_non_hash

      case {me, them}
      when {nil, them}
        Log.trace &.emit %<me is nil, so returning them>
        return {key, them}
      when {me, nil}
        Log.trace &.emit %<them is nil, so returning me>
        return {key, me} unless merge_nil_values
      end

      # merge if both are hashes
      if me.is_a?(Hash) && them.is_a?(Hash)
        return {key, deep_merge(me, them, overwrite_arrays,
          union_arrays, keep_existing,
          merge_nil_values, merge_non_hash,
        )}
      end

      if merge_non_hash && me.is_a?(::K8S::Kubernetes::Resource) && them.is_a?(::K8S::Kubernetes::Resource)
        return {key, me.merge(them)}
      end

      return {key, nil} if merge_nil_values && them.nil?

      if me.is_a?(Array) && them.is_a?(Array)
        if overwrite_arrays
          return {key, them}
        elsif union_arrays
          return {key, me | them}
        else
          return {key, me + them}
        end
      end

      return {key, me} if keep_existing

      {key, them}
    end

    # Yield with all non-nil args, returning matching array with corresponding return values or nils.
    #
    # Args must be usable as hash keys. Duplicate args will all map to the same return value.
    def self.compact_map(args)
      func_args = args.to_a.compact
      values = yield func_args
      value_map = func_args.zip?(values).to_h
      args.map { |arg| value_map[arg]? }
    end

    # Recursive compact for Hash/Array
    def recursive_compact(value : Hash | Array | YAML::Any | JSON::Any)
      case value
      when Hash
        value.reject! { |_, v| _recursive_compact(v) }.to_h
      when Array
        value.reject! { |v| _recursive_compact(v) }
      when YAML::Any, JSON::Any
        if value.as_h?
          value.as_h.reject! { |_, v| _recursive_compact(v) }
        elsif value.as_a?
          value.as_a.reject! { |v| _recursive_compact(v) }
        else
          raise "unexpected type: #{value.raw.class}"
        end
      else
        raise "unexpected type: #{value.class}"
      end
    end

    private def _recursive_compact(v) : Bool
      case v
      when YAML::Any, JSON::Any
        if v.as_a?
          _recursive_compact(v.as_a)
        elsif v.as_h?
          _recursive_compact(v.as_h)
        else
          false
        end
      when Array
        v.empty?
      when Hash
        v.reject! { |_, a| _recursive_compact(a) }
        v.empty?
      when nil
        true
      else
        false
      end
    end

    # Produces a set of json-patch operations so that applying
    # the operations on a, gives you the results of b
    # Used in correctly patching the Kube resources on stack updates
    #
    # patch_to [Hash] Hash to compute patches against
    # patch_from [Hash] New Hash to compute patches "from"
    def json_patch(patch_to : Hash, patch_from : Hash)
      ops = Array(NamedTuple(op: String, path: String, value: Array(String) | String | Nil)).new
      # Each diff is like:
      # ["+", ["spec", "selector", "food"], "kebab"]
      # ["-", ["spec", "selector", "drink"], "pepsi"]
      # or
      # ["~", ["spec", "selector", "drink"], "old value", "new value"]
      # the path elements can be symbols too, depending on the input hashes
      Hashdiff.diff(patch_to, patch_from, array_path: true).each do |diff|
        Log.trace &.emit %<diff: #{diff.inspect}>
        operator = diff[0]
        # substitute "/" with "~1" and "~" with "~0"
        # according to RFC 6901
        path = diff[1].as(Array).map(&.to_s.gsub(PATH_REGEX, PATH_TR_MAP))
        if operator == "-"
          ops += [{
            op:   "remove",
            path: "/" + path.join("/"),
          }]
        elsif operator == "+"
          ops += [{
            op:    "add",
            path:  "/" + path.join("/"),
            value: diff[2],
          }]
        elsif operator == "~"
          ops += [{
            op:    "replace",
            path:  "/" + path.join("/"),
            value: diff[3]?,
          }]
        else
          raise "Unknown diff operator: #{operator}!"
        end
      end

      ops
    end

    def json_patch(patch_to : NamedTuple, patch_from : NamedTuple)
      json_patch(patch_to.to_h, patch_from.to_h)
    end
  end
end
