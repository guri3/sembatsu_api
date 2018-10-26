class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :host, foreign_key: true
      t.string     :title, null: false
      t.string     :registration_id, null: false
      t.text       :body, null: false
      t.string     :image_url, null: false
      t.string     :prefecture, null: false
      t.string     :city, null: false
      t.decimal    :latitude, precision: 9, scale: 6
      t.decimal    :longitude, precision: 9, scale: 6
      t.string     :max_stay_num, null: false
      t.string     :check_in_time, null: false
      t.string     :check_out_time, null: false
      t.integer    :bed_room, null: false
      t.integer    :bed_num, null: false
      t.integer    :toilet_num, null: false
      t.integer    :kitchen_num, null: false
      t.string     :facilyty, null: false, default: ""
      t.string     :amenity, null: false, default: ""
      t.string     :pet, null: false, default: ""
      t.text       :child, null: false, default: ""
      t.string     :access, null: false, default: ""
      t.integer    :price, null: false
      t.decimal    :review, precision: 2, scale: 1, null:false, default: 0.0

      t.timestamps
    end
  end
end
