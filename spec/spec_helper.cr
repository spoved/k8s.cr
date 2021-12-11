require "spectator"
require "log"
require "./fixture_helper"

Spectator.configure do |config|
  config.before_suite {
  # Log.setup(:trace)
  }
end
