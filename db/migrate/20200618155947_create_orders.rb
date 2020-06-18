class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, null: false, default: 0.0
      t.decimal :delivery_cost, null: false, default: 0.0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
