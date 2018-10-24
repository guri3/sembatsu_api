class CreateRoomreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :room_reviews do |t|
      t.references :room, foreign_key: true
      t.string     :body

      t.timestamps
    end
  end
end
