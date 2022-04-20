module K8S::Util
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
