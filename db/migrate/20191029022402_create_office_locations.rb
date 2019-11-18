class CreateOfficeLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :office_locations do |t|
      t.string :street_address
      t.string :zip
      t.string :phone
      t.references :physician, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
