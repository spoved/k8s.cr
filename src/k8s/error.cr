module K8S
  class Error < Exception
    class UndefinedResource < Error
      def initialize(resource)
        super("Undefined resource: #{resource}")
      end
    end

    class UnknownResource < Error
      def initialize(resource)
        super("Unknown resource: #{resource}")
      end
    end
  end
end
