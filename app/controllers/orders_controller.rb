class OrdersController < ApplicationController
  def create
    order = Order.new params[:order]
    order.notify_admin
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js   { }
    end
  end
end
