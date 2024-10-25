class OrdersController < ApplicationController
  def create
    @order = Order.new(total_quantity: 0, total_value: 0)
   if @order.save()
  end
end
