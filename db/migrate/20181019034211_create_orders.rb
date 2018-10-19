class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :guest, foreign_key: true
      t.references :newroom, foreign_key: true
      t.date :orderdate, null: false
      t.integer :totalcost, null: false
      t.integer :howmanynights, null: false

      t.timestamps
    end
  end
end
