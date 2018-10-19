class CreateNewrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :newrooms do |t|
      t.references :host, foreign_key: true
      t.string :location, null:false
      t.string :city, null: false
      t.string :country, null: false
      t.boolean :wifi
      t.integer :bednumber
      t.integer :bathroomnumber
      t.boolean :washmachine
      t.boolean :kitchen

      t.timestamps
    end
  end
end
