class OrdersController < ApplicationController
  def create
    order = Order.new params[:order]
    order.notify_admin
  end
end
