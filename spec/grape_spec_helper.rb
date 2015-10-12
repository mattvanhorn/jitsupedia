require "grape"
require "json"
require "rack/test"

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.raise_errors_for_deprecations!
end

def app
  described_class
end

