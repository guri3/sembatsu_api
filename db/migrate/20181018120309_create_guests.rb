class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.date :birthday, null: false
      t.string :emailaddress, null: false
      t.string :city, null: false
      t.string :country, null:false

      t.timestamps
    end
  end
end
