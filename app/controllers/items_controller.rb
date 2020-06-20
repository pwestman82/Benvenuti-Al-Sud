class ItemsController < ApplicationController
  before_action :set_item, only: [:update, :delete]
  before_action :set_product, :set_order

  def create
    @item = Item.create(quantity: 1, product: @product, order: @order)
    
    flash[:notice] = "Cart successfully updated"
    redirect_back(fallback_location: products_path)
  end

  def update
    if params[:counter_action] == "increment"
      @item.quantity += 1
      @item.save
    else
      @item.quantity -= 1
      @item.quantity == 0 ?  @item.destroy : @item.save
    end

    flash[:notice] = "Cart successfully updated"
    redirect_back(fallback_location: products_path)
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
