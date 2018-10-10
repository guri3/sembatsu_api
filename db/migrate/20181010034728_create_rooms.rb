class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :title, null: false
      t.integer :price, null: false
      t.decimal :rating, precision: 2, scale: 1, null: false
      t.integer :occupancy, null: false
      t.string :prefecture, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
