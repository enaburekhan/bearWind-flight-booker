class AddCodeToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :code, :string
  end
end
