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
