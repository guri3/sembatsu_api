class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :gender
      t.string :emailaddress
      t.string :city
      t.string :country
      t.string :rentallocation

      t.timestamps
    end
  end
end
