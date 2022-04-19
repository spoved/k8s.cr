require "spectator"
require "log"
require "../src/k8s"

require "./fixture_helper"
extend FixtureHelpers

Spectator.configure do |config|
  config.before_suite {
  # Log.setup(:trace)
  }
end
