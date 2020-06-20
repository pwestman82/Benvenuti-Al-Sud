class ItemsController < ApplicationController
  before_action :set_item, only: [:update, :delete]
  before_action :set_product, :set_order

  def create
    @item = Item.create(quantity: 1, product: @product, order: @order)
    # Update order subtotal
    @order.subtotal += @product.price
    @order.save
    
    flash[:notice] = "#{@product.category.capitalize} #{@product.name} successfully added"
    redirect_back(fallback_location: products_path) # refreshes current page (menu or cart)
  end

  def update
    if params[:counter_action] == "increment"
      # Update item quantity 
      @item.quantity += 1
      @item.save
      # Update order subtotal
      @order.subtotal += @product.price
      @order.save
      flash[:notice] = "#{@product.category.capitalize} #{@product.name} successfully added"
    else
      @item.quantity -= 1
      @item.quantity == 0 ? @item.destroy : @item.save # destroy item if the quantity is 0
      @order.subtotal -= @product.price
      @order.save
      flash[:notice] = "#{@product.category.capitalize} #{@product.name} successfully removed"
    end

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
