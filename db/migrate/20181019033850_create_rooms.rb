class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :host, foreign_key: true
      t.string     :location, null: false
      t.integer    :price, null: false
      t.string     :city, null: false
      t.string     :country, null: false
      t.boolean    :wifi
      t.integer    :bed_num
      t.integer    :bath_room_num
      t.boolean    :wash_machine
      t.boolean    :kitchen

      t.timestamps
    end
  end
end
