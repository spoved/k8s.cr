module K8S::Hashdiff
  # Used to compare arrays in a linear complexity, which produces longer diffs
  # than using the lcs algorithm but is considerably faster
  class LinearCompareArray(T, V)
    def self.call(old_array : Array(L), new_array : Array(M), **options) forall L, M
      LinearCompareArray(L, M).new(old_array, new_array, **options).call
    end

    alias Options = NamedTuple(
      similarity: Float64,
      delimiter: String,
      strict: Bool,
      indifferent: Bool,
      strip: Bool,
      numeric_tolerance: Float64,
      array_path: Bool,
      use_lcs: Bool,
      case_insensitive: Bool,
      prefix: Array(String | Symbol) | Array(String) | String,
    )
    getter old_array : Array(T)
    getter new_array : Array(V)
    getter options : Options
    getter additions = Array(Tuple(String, Array(Int32 | String | Symbol) | Array(Int32 | String) | String, T) | Tuple(String, Array(Int32 | String | Symbol) | Array(Int32 | String) | String, V)).new
    getter deletions = Array(Tuple(String, Array(Int32 | String | Symbol) | Array(Int32 | String) | String, T) | Tuple(String, Array(Int32 | String | Symbol) | Array(Int32 | String) | String, V)).new
    # getter differences = Array(Tuple(String, Array(Int32 | String | Symbol) | Array(Int32 | String) | String, T) | Tuple(String, Array(Int32 | String | Symbol) | Array(Int32 | String) | String, V)).new
    property old_index : Int32 = 0
    property new_index : Int32 = 0
    property expected_additions : Int32 = 0

    def initialize(@old_array : Array(T), @new_array : Array(V), **options)
      @options = Options.from({
        prefix:            "",
        similarity:        0.8,
        delimiter:         ".",
        strict:            true,
        indifferent:       false,
        strip:             false,
        numeric_tolerance: 0_f64,
        array_path:        false,
        use_lcs:           true,
        case_insensitive:  false,
      }.merge(options).to_h)
    end

    def call
      return Array(DiffResult).new if old_array.empty? && new_array.empty?

      self.old_index = 0
      self.new_index = 0
      # by comparing the array sizes we can expect that a number of items
      # are either added or removed
      self.expected_additions = new_array.size - old_array.size

      differences = Array(DiffResult).new
      loop do
        if extra_items_in_old_array?
          append_deletion(old_array[old_index], old_index)
        elsif extra_items_in_new_array?
          append_addition(new_array[new_index], new_index)
        else
          _diffs = compare_at_index
          if !_diffs.nil? && _diffs.is_a?(Array)
            _diffs.each do |diff|
              # differences << diff
              differences = differences + [diff]
            end
          end
        end

        self.old_index = old_index + 1
        self.new_index = new_index + 1
        break if iterated_through_both_arrays?
      end

      # this algorithm only allows there to be additions or deletions
      # deletions are reverse so they don"t change the index of earlier items
      differences + self.additions + self.deletions.reverse
    end

    def extra_items_in_old_array?
      old_index < old_array.size && new_index >= new_array.size
    end

    def extra_items_in_new_array?
      new_index < new_array.size && old_index >= old_array.size
    end

    def iterated_through_both_arrays?
      old_index >= old_array.size && new_index >= new_array.size
    end

    def compare_at_index
      difference = item_difference(old_array[old_index], new_array[new_index], old_index)
      return nil if difference.empty?

      index_after_additions = index_of_match_after_additions
      append_addititions_before_match(index_after_additions)

      index_after_deletions = index_of_match_after_deletions
      append_deletions_before_match(index_after_deletions)

      match = index_after_additions || index_after_deletions

      return difference unless match
      nil
    end

    def item_difference(old_item, new_item, item_index)
      prefix = Hashdiff.prefix_append_array_index(**options, array_index: item_index)
      Hashdiff.diff(old_item, new_item, **options.merge(prefix: prefix))
    end

    # look ahead in the new array to see if the current item appears later
    # thereby having new items added
    def index_of_match_after_additions
      return unless expected_additions > 0

      (1..expected_additions).each do |i|
        next_difference = item_difference(
          old_array[old_index],
          new_array[new_index + i],
          old_index
        )

        return new_index + i if next_difference.empty?
      end

      nil
    end

    # look ahead in the old array to see if the current item appears later
    # thereby having items removed
    def index_of_match_after_deletions
      return unless expected_additions < 0

      (1..(expected_additions.abs)).each do |i|
        next_difference = item_difference(
          old_array[old_index + i],
          new_array[new_index],
          old_index
        )

        return old_index + i if next_difference.empty?
      end

      nil
    end

    def append_addititions_before_match(match_index)
      return unless match_index

      (new_index...match_index).each { |i| append_addition(new_array[i], i) }
      self.expected_additions = expected_additions - (match_index - new_index)
      self.new_index = match_index
    end

    def append_deletions_before_match(match_index)
      return unless match_index

      (old_index...match_index).each { |i| append_deletion(old_array[i], i) }
      self.expected_additions = expected_additions + (match_index - new_index)
      self.old_index = match_index
    end

    def append_addition(item, index)
      key = Hashdiff.prefix_append_array_index(**options, array_index: index)
      self.additions << {"+", key, item}
    end

    def append_deletion(item, index)
      key = Hashdiff.prefix_append_array_index(**options, array_index: index)
      self.deletions << {"-", key, item}
    end

    def append_differences(difference : Array(Tuple))
      @differences += difference
    end
  end
end
