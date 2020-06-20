class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :set_order, only: [:cart]

  def home
  end

  def cart
    @items = @order.items.order(:created_at).filter { |item| item.quantity > 0 }
    @products = @items.map(&:product)
    @total = @order.subtotal + @order.delivery_cost
  end
end
