require "grape/activerecord"
require "database_cleaner"

ROOT = Pathname.new(File.expand_path('../..', __FILE__))
db_file = ROOT.join('config', 'database.yml')
Grape::ActiveRecord.database_file = db_file

configuration = YAML::load(File.open(db_file))
ActiveRecord::Base.establish_connection(configuration[ENV['RACK_ENV']])
ActiveRecord::Base.logger = nil unless ENV['LOG'] == true

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
