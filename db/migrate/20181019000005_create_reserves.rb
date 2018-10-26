class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.references :guest, foreign_key: true
      t.references :room, foreign_key: true
      t.date       :from, null: false
      t.date       :to, null: false
      t.date       :reserve_date, null: false

      t.timestamps
    end

    create_table :reserve_options do |t|
      t.references :reserve, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
