class CreateReservedDates < ActiveRecord::Migration[5.2]
  def change
    create_table :reserved_dates do |t|
      t.references :room, foreign_key: true
      t.date :reserved_date, null: false

      t.timestamps
    end
  end
end
