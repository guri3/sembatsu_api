class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.references :order, foreign_key: true
      t.string     :name

      t.timestamps
    end
  end
end