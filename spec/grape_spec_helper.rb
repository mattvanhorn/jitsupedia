this_dir = File.dirname(__FILE__)
$LOAD_PATH.unshift(File.join(this_dir, '..', 'lib'))
$LOAD_PATH.unshift(File.join(this_dir, '..', 'app'))
$LOAD_PATH.unshift(File.join(this_dir, 'support'))

require 'grape'
require 'json'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.raise_errors_for_deprecations!
end

def app
  described_class
end
