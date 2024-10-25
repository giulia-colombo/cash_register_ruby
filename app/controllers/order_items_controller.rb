class OrderItemsController < ApplicationController
  def new
    @order = Order.find(params[:id])
    Rails.logger.debug("Current order: #{@order.inspect()}")
  end
end
