class OrdersController < ApplicationController
  # Create a new order with total_quantity and total_value of 0 to start.
  def create
    @order = Order.new(total_quantity: 0, total_value: 0)
   if @order.save()
     redirect_to new_order_item_path(@order), notice: "Order successfully started."
   else
    render :new, alert: "Error initializing order."
   end
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end
end
