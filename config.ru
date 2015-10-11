$LOAD_PATH.unshift File.dirname(__FILE__)
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'app'))

require "config/application"

run Jitsupedia::API
