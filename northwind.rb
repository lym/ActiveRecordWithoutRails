require 'active_record'
require 'yaml'
require 'logger'

dbconfig = YAML::load(File.open(ENV["HOME"] + '/ruby_projects/northwind/database.yml'))
ActiveRecord::Base.establish_connection(dbconfig)
ActiveRecord::Base.logger = Logger.new(STDERR)

class Customer < ActiveRecord::Base
end

puts Customer.count
