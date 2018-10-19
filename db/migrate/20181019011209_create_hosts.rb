class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.string :emailaddress, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.string :rentallocation, null:false

      t.timestamps
    end
  end
end
