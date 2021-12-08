alias K8S::Hashdiff::DiffResult = Tuple(String, Array(String), String)
alias K8S::Hashdiff::LcsDiffResult = Tuple(String, Int32, String)

require "./hashdiff/*"

module K8S
  module Hashdiff
    extend self

    def diff(obj1 : T, obj2 : L, **options) forall T, L
      obj1 = obj1.to_h if obj1.is_a?(NamedTuple)
      obj2 = obj2.to_h if obj2.is_a?(NamedTuple)
      obj1 = obj1.to_h if obj1.is_a?(K8S::Resource)
      obj2 = obj2.to_h if obj2.is_a?(K8S::Resource)

      Log.trace { "Diff: #{obj1.class} and #{obj2.class}" }

      opts = {
        prefix:            [] of String,
        similarity:        0.8,
        delimiter:         ".",
        strict:            true,
        indifferent:       false,
        strip:             false,
        numeric_tolerance: 0,
        array_path:        true,
        use_lcs:           true,
      }.merge(options)

      if obj1.nil? && obj2.nil?
        Array(DiffResult).new
      elsif obj1.nil? || obj2.nil?
        [{"~", opts[:prefix], obj1, obj2}]
      elsif !comparable?(obj1, obj2, opts[:strict])
        [{"~", opts[:prefix], obj1, obj2}]
      elsif obj1.is_a?(Array) && opts[:use_lcs]
        LcsCompareArrays.call(obj1, obj2, **opts)
      elsif obj1.is_a?(Hash) && obj2.is_a?(Hash)
        CompareHashes.call(obj1, obj2, **opts)
      elsif compare_values(obj1, obj2, **opts)
        Array(DiffResult).new
      else
        [{"~", opts[:prefix], obj1, obj2}]
      end
    end

    def diff(obj1 : NamedTuple, obj2 : NamedTuple, **options)
      diff(obj1.to_h, obj2.to_h, **options)
    end

    # diff array using LCS algorithm
    def diff_array_lcs(arraya, arrayb, **options)
      change_set = Array(LcsDiffResult).new
      return change_set if arraya.empty? && arrayb.empty?

      if arraya.empty?
        arrayb.each_index do |index|
          change_set = change_set + [{"+", index, arrayb[index]}]
        end

        return change_set
      end

      if arrayb.empty?
        arraya.each_index do |index|
          i = arraya.size - index - 1
          change_set = change_set + [{"-", i, arraya[i]}]
        end

        return change_set
      end

      opts = {
        prefix:     "",
        similarity: 0.8,
        delimiter:  ".",
      }.merge(options)

      links = lcs(arraya, arrayb, **opts)

      yield links

      # padding the end
      links << {arraya.size, arrayb.size}

      last_x = -1
      last_y = -1
      links.each do |pair|
        x, y = pair

        # remove from a, beginning from the end
        (x > last_x + 1) && (x - last_x - 2).downto(0).each do |i|
          change_set = change_set + [{"-", last_y + i + 1, arraya[i + last_x + 1]}]
        end

        # add from b, beginning from the head
        (y > last_y + 1) && 0.upto(y - last_y - 2).each do |i|
          change_set = change_set + [{"+", last_y + i + 1, arrayb[i + last_y + 1]}]
        end

        # update flags
        last_x = x
        last_y = y
      end

      change_set
    end
  end
end
