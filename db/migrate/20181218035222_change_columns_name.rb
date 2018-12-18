class ChangeColumnsName < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :from_airport, :departure_airport_id 
    rename_column :flights, :to_airport, :arival_airport_id 
  end
end
