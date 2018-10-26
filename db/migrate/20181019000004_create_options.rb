class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :title, null: false
      t.string :image_url, null: false

      t.timestamps
    end

    create_table :room_options do |t|
      t.references :room, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
