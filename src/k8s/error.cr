module K8S
  class Error < Exception
    class UndefinedResource < Error
      def initialize(resource)
        super("Undefined resource: #{resource}")
      end
    end

    class UnknownResource < Error
      @generic : K8S::Kubernetes::Resource::Generic | K8S::Api::Core::V1::List | Nil = nil

      def initialize(resource, @generic = nil)
        super("Unknown resource: #{resource}")
      end
    end
  end
end
