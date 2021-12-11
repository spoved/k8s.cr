require "spectator"
require "log"

require "./fixture_helper"
extend FixtureHelpers

Spectator.configure do |config|
  config.before_suite {
  # Log.setup(:trace)
  }
end
