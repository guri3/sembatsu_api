class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :guest, foreign_key: true
      t.references :room, foreign_key: true
      t.date       :order_date, null: false
      t.integer    :total_cost, null: false
      t.integer    :howmany_nights, null: false

      t.timestamps
    end
  end
end
