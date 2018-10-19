class CreateNewrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :newrooms do |t|
      t.references :host, foreign_key: true
      t.string :location
      t.string :city
      t.string :country
      t.boolean :wifi
      t.integer :bednumber
      t.integer :bathroomnumber
      t.boolean :washmachine
      t.boolean :kitchen

      t.timestamps
    end
  end
end
