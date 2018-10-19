class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :gender
      t.date :birthday
      t.string :emailaddress
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
