abstract struct K8S::Kubernetes::Resource
  class Error < K8S::Error
    class NotNilable < Error
      def initialize(key, accessor)
        super(%<#{key} cannot be nil, please set the value or use #{accessor}? to check it first>)
      end
    end

    class ReadOnly < Error
      def initialize(key)
        super(%<#{key} is a read only value>)
      end
    end

    class CastError < Error
      def initialize(value, types)
        super(%<unable to cast #{value.class} to #{types.join(" | ")}>)
      end
    end
  end
end
