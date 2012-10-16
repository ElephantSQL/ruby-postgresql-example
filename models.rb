require 'sequel'

DB = Sequel.connect 'postgres://localhost/rubypgexample'

class Todo < Sequel::Model
end
