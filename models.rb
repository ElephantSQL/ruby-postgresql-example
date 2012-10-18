require 'sequel'

if ENV['CRED_FILE']
  creds = JSON.parse ENV['CRED_FILE']
  DB = Sequel.connect creds['ELEPHANTSQL']['ELEPHANTSQL_URL']
else
  DB = Sequel.connect ENV['ELEPHANTSQL_URL'] || 'postgres://localhost/rubypgexample'
end

class Todo < Sequel::Model
end
