class ChangeItemsQuantityDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :items, :quantity, 0
  end
end
