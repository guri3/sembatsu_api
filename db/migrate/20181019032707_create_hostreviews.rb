class CreateHostreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :hostreviews do |t|
      t.references :host, foreign_key: true
      t.string :review

      t.timestamps
    end
  end
end
