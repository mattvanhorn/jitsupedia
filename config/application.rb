RACK_ENV = (ENV['RACK_ENV'] || 'development').to_sym
require 'bundler'
Bundler.require(:default, RACK_ENV)

ROOT = Pathname.new(File.expand_path('../..', __FILE__))
$LOAD_PATH.unshift(ROOT.join('app'))

require "api/jitsupedia"

Grape::ActiveRecord.database_file = ROOT.join('config', 'database.yml')
