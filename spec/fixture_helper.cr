module FixtureHelpers
  extend self
  FIXTURES_PATH = File.join(File.dirname(__FILE__), "fixtures")

  # file path
  def fixture_path(*path)
    File.join(FIXTURES_PATH, *path)
  end

  # file contents
  def fixture(*path)
    File.read(fixture_path(*path))
  end

  def resource_fixture(*path)
    K8S::Kubernetes::Resource.from_file(fixture_path(*path))
  end
end
