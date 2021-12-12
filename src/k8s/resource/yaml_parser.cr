require "yaml"

# :nodoc:
class ::K8S::Kubernetes::Resource::YAMLParser < ::YAML::Nodes::Parser
  def new_documents
    [] of Array(::YAML::Nodes::Document)
  end

  # Deserializes multiple YAML document.
  def parse_all_nodes
    documents = Array(::YAML::Nodes::Document).new

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

# :nodoc:
struct JSON::Any
  # Convert a YAML object to a JSON document.
  def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
    JSON::Any.from_json YAML::Any.new(ctx, node).to_json
  end
end
