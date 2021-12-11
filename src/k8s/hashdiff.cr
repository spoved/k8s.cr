module K8S
  module Hashdiff
    extend self

    alias DiffResult = Tuple(String, Array(String), String)
    alias LcsDiffResult = Tuple(String, Int32, String)
  end
end

require "./hashdiff/*"
