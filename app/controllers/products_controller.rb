class ProductsController < ApplicationController
  before_action :set_order
  
  def index
    @pizzas = Product.where(category: "pizza")
    @pastas = Product.where(category: "pasta")
    @antipasti = Product.where(category: "antipasto")
  end
end
