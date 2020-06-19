class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(_user)
    last_order = current_user.orders.last
    order = !last_order || last_order.completed ? Order.create(user: current_user) : last_order
    session[:order_id] = order.id
    products_path
  end

  private

  def set_order
    @order = Order.find(session[:order_id])
  end
end
