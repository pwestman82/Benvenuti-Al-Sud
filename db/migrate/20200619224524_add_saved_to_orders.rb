class AddSavedToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :completed, :boolean, default: false
  end
end
