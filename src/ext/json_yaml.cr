require "json"
require "yaml"

# :nodoc:
struct JSON::Any
  # Convert a YAML object to a JSON document.
  def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
    JSON::Any.from_json(YAML::Any.new(ctx, node).to_json)
  end
end

# :nodoc:
struct YAML::Any
  # Convert a JSON document to a YAML object.
  def self.new(parser : ::JSON::PullParser) : YAML::Any
    YAML.parse(JSON.parse(parser.read_raw).to_yaml)
  end
end
