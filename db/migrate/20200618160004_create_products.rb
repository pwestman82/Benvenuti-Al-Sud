class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.string :category, null: false
      t.decimal :price, null: false, default: 0.0

      t.timestamps
    end
  end
end
