class CreateRoomReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :room_reviews do |t|
      t.references :room, foreign_key: true
      t.decimal    :satisfaction, precision: 2, scale: 1
      t.decimal    :cleanliness, precision: 2, scale: 1
      t.decimal    :cost_performance, precision: 2, scale: 1
      t.decimal    :amenity, precision: 2, scale: 1
      t.decimal    :location, precision: 2, scale: 1
      t.decimal    :access, precision: 2, scale: 1
      t.text       :body

      t.timestamps
    end
  end
end
