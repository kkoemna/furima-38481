class OrdersController < ApplicationController

  def index
    @order_address = OrderAddress.new
  end

  def create
  end

end