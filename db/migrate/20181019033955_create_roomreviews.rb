class CreateRoomreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :roomreviews do |t|
      t.references :newroom, foreign_key: true
      t.string :review

      t.timestamps
    end
  end
end
