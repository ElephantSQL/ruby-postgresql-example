Sequel.migration do
  change do 
    create_table :todos do
      primary_key :id
      String :title
      TrueClass :done, default: false, null: false
    end
  end
end
