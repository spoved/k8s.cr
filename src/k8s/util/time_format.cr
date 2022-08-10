struct K8S::TimeFormat
  # @@rfc3339_format = ::Time::Format.new("%Y-%m-%dT%TZ")

  def self.parse(string, loc = nil)
    if string =~ /\.\d+Z/
      ::Time.parse_rfc3339(string)
    else
      ::Time.parse_rfc3339(string)
      # @@rfc3339_format.parse(string, ::Time::Location::UTC)
    end
  end

  def parse(string, loc = nil)
    K8S::TimeFormat.parse(string, loc)
  end

  def format(value)
    Time::Format::RFC_3339.format(value)
  end

  def from_json(pull : JSON::PullParser) : ::Time
    string = pull.read_string
    parse(string, ::Time::Location::UTC)
  end

  def from_yaml(ctx : YAML::ParseContext, node : YAML::Nodes::Node) : ::Time
    unless node.is_a?(YAML::Nodes::Scalar)
      node.raise "Expected scalar, not #{node.kind}"
    end

    t = Time::Format::YAML_DATE.parse?(node.value)
    if t.nil?
      t = parse(node.value, ::Time::Location::UTC)
    end
    t
  end

  def to_json(value : ::Time, json : JSON::Builder) : Nil
    format(value).to_json(json)
  end

  def to_yaml(value : ::Time, yaml : YAML::Nodes::Builder) : Nil
    yaml.scalar Time::Format::YAML_DATE.format(value)
  end
end
