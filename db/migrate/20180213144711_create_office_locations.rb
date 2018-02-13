class CreateOfficeLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :office_locations do |t|
      t.string :city
      t.integer :publisher_id

      t.timestamps
    end
  end
end
