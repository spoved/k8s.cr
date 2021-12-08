require "spectator"
require "log"

Spectator.configure do |config|
  config.before_suite {
  # Log.setup(:trace)
  }
end
