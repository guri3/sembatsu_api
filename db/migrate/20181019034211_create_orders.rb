class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :guest, foreign_key: true
      t.references :newroom, foreign_key: true
      t.date :orderdate
      t.integer :totalcost
      t.integer :howmanynights

      t.timestamps
    end
  end
end
