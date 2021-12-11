require "json"
require "yaml"

annotation ::K8S::Properties; end

# :nodoc:
class ::K8S::YAMLParser < YAML::Nodes::Parser
  def new_documents
    [] of Array(YAML::Nodes::Document)
  end

  # Deserializes multiple YAML document.
  def parse_all_nodes
    documents = Array(YAML::Nodes::Document).new

    @pull_parser.read_next
    loop do
      case @pull_parser.kind
      when .stream_end?
        return documents
      when .document_start?
        add_to_documents(documents, parse_document)
      else
        unexpected_event
      end
    end
  end
end

abstract class ::K8S::Kubernetes::Resource
  include JSON::Serializable
  include ::YAML::Serializable

  abstract def api_version : String
  abstract def kind : String

  def self.from_file(file)
    Log.trace { "Loading #{file}" }
    # from_yaml(File.read(file))
    nodes = ::K8S::YAMLParser.new(File.read(file), &.parse_all_nodes)
    nodes.flat_map { |node| node.nodes.map { |n| ::K8S::Resource.new(YAML::ParseContext.new, n) } }
  end

  macro inherited
    {% if @type.annotation(::K8S::Properties) %}
    {% anno = @type.annotation(::K8S::Properties) %}

    def to_h
      puts "to_h #{self.class}"
      {
      {% for prop, value in anno.named_args %}
        {% if value[:type].is_a?(::K8S::Kubernetes::Resource) %}
        {{prop.stringify}} => @{{prop.id}}.nil? ? nil : @{{prop.id}}.not_nil!.to_h,
        {% else %}
        {{prop.stringify}} => @{{prop.id}},
        {% end %}
      {% end %}
      }
    end

    def merge(other)
      Log.info { "Merging #{self.class.name} with #{other.class.name}" }

      copy = self.to_h
      case other
      when Hash
          copy = copy.deep_merge(other_hash)
      when {{@type.id}}
          other_hash = other.to_h
          copy = copy.deep_merge(other_hash)
      else
        raise "Cannot merge {{@type.id}} with #{other.class}"
      end
      self.class.from_h(copy)
    end

    def self.from_h(hash)
      from_json(hash.to_json)
    end

    {% end %}
  end

  module Object
    abstract def api_version : String
    abstract def kind : String
    abstract def metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ObjectMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ObjectMeta.new
    end
  end

  module List
    abstract def api_version : String
    abstract def kind : String
    abstract def metadata : Apimachinery::Apis::Meta::V1::ListMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ListMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ListMeta.new
    end
  end
end

alias ::K8S::Resource = ::K8S::Kubernetes::Resource
alias ::K8S::ObjectMeta = ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
alias ::K8S::ListMeta = ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
alias ::K8S::APIResource = ::K8S::Apimachinery::Apis::Meta::V1::APIResource
alias ::K8S::APIResourceList = ::K8S::Apimachinery::Apis::Meta::V1::APIResourceList
