require 'sequel'

DB = Sequel.connect ENV['ELEPHANTSQL_URL'] || 'postgres://localhost/rubypgexample'

class Todo < Sequel::Model
end
