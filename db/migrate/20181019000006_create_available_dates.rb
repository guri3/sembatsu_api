class CreateAvailableDates < ActiveRecord::Migration[5.2]
  def change
    create_table :available_dates do |t|
      t.references :room, foreign_key: true
      t.date :available_date, null: false

      t.timestamps
    end
  end
end
