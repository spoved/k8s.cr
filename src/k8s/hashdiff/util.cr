module K8S
  module Hashdiff
    extend self

    # judge whether two objects are similar
    def similar?(obja, objb, **options)
      return compare_values(obja, objb, **options) if !options[:comparison]? && !any_hash_or_array?(obja, objb)

      count_a = count_nodes(obja)
      count_b = count_nodes(objb)

      return true if (count_a + count_b).zero?

      opts = {similarity: 0.8}.merge(options)
      diffs = count_diff diff(obja, objb, **opts)

      (1 - diffs / (count_a + count_b).to_f) >= opts[:similarity]
    end

    # check if objects are comparable
    private def comparable?(obj1 : T, obj2 : L, strict = true) : Bool forall T, L
      return true if (obj1.is_a?(Array) && obj2.is_a?(Array))
      return true if (obj1.is_a?(Hash) && obj2.is_a?(Hash))
      return true if !strict && obj1.is_a?(Number) && obj2.is_a?(Number)
      obj1.is_a?(L) && obj2.is_a?(T)
    end

    # count node differences
    def count_diff(diffs)
      diffs.sum(0) do |item|
        old_change_count = count_nodes(item[2])
        new_change_count = count_nodes(item[3]?)
        (old_change_count + new_change_count)
      end
    end

    # count total nodes for an object
    def count_nodes(obj)
      return 0 unless obj

      count = 0
      if obj.is_a?(Array)
        obj.each { |e| count += count_nodes(e) }
      elsif obj.is_a?(Hash)
        obj.each_value { |v| count += count_nodes(v) }
      else
        return 1
      end

      count
    end

    # decode property path into an array
    # @param [String] path Property-string
    # @param [String] delimiter Property-string delimiter
    #
    # e.g. "a.b[3].c" => ['a', 'b', 3, 'c']
    def decode_property_path(path, delimiter = '.')
      path.split(delimiter).inject(Array(String).new) do |memo, part|
        if match = /^(.*)\[(\d+)\]$/.match(part)
          if match[0]? && !match[0].empty?
            memo + [match[0], match[1].to_i]
          else
            memo + [match[1].to_i]
          end
        else
          memo + [part]
        end
      end
    end

    # get the node of hash by given path parts
    def node(hash, parts)
      temp = hash
      parts.each do |part|
        temp = temp[part]
      end
      temp
    end

    # check for equality or "closeness" within given tolerance
    def compare_values(obj1 : T, obj2 : L, **options) : Bool forall T, L
      obj1 == obj2
    end

    # :ditto:
    def compare_values(obj1 : Number, obj2 : Number, **options) : Bool
      if options[:numeric_tolerance]?.is_a?(Number)
        (obj1 - obj2).abs <= options[:numeric_tolerance]
      else
        obj1 == obj2
      end
    end

    # :ditto:
    def compare_values(obj1 : String, obj2 : String, **options) : Bool
      if options[:strip]? == true
        obj1 = obj1.strip
        obj2 = obj2.strip
      end

      if options[:case_insensitive]? == true
        obj1 = obj1.downcase
        obj2 = obj2.downcase
      end

      obj1 == obj2
    end

    def prefix_append_key(key, prefix : Array(String), **opts) : Array(String)
      prefix + [key.to_s]
    end

    # def prefix_append_key(key, prefix : String, **opts)
    #   prefix.empty? ? key.to_s : "#{prefix}#{opts[:delimiter]}#{key}"
    # end

    def prefix_append_array_index(prefix : Array(String), array_index, **opts) : Array(String)
      prefix + [array_index]
    end

    # def prefix_append_array_index(prefix : String, array_index, **opts)
    #   "#{prefix}[#{array_index}]"
    # end

    # checks if both objects are Arrays or Hashes
    private def any_hash_or_array?(obja, objb)
      obja.is_a?(Array) || obja.is_a?(Hash) || objb.is_a?(Array) || objb.is_a?(Hash)
    end
  end
end
