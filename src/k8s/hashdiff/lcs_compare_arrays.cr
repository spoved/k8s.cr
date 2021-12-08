require "./util"
require "./lcs"

module K8S::Hashdiff::LcsCompareArrays
  extend self

  def call(obj1 : Array(T), obj2 : Array(L), **opts) forall T, L
    result = Array(DiffResult).new

    changeset = Hashdiff.diff_array_lcs(obj1, obj2, **opts) do |lcs|
      lcs.each do |pair|
        prefix = Hashdiff.prefix_append_array_index(**opts, array_index: pair[0].to_s)
        Hashdiff.diff(obj1[pair[0]], obj2[pair[1]], **opts.merge(prefix: prefix)).each do |change|
          result += [change]
        end
      end
    end

    changeset.each do |change|
      next if change[0] != "-" && change[0] != "+"
      change_key = Hashdiff.prefix_append_array_index(**opts, array_index: change[1].to_s)
      result += [{change[0], change_key, change[2]}]
    end

    result
  end
end
