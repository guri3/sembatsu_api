class CreateHostreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :host_reviews do |t|
      t.references :host, foreign_key: true
      t.string     :body

      t.timestamps
    end
  end
end
