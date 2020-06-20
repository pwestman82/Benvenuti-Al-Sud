class OrdersController < ApplicationController
  before_action :set_order, only: [:update]

  def index
    @orders = Order.where(user: current_user, completed: true).order(created_at: :desc)
  end

  def update
    @order.completed = true
    @order.save

    # Create a new order and store it in the session hash
    order = Order.create(user: current_user, delivery_cost: 4.99)
    session[:order_id] = order.id

    # Redirect to orders page
    flash[:notice] = "Order successfully submitted"
    redirect_to orders_path
  end
end
