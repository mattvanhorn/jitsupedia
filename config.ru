$LOAD_PATH.unshift File.dirname(__FILE__)

require "config/application"

use ActiveRecord::ConnectionAdapters::ConnectionManagement
run Jitsupedia::API
