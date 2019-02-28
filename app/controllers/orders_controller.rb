class OrdersController < ApplicationController
  def index
    @orders = Order.all.sort_by { |o| o.user.name }
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(user_id: params[:order][:user], cake_id: params[:order][:cake],
      order_date: DateTime.now, fulfilled: false)

    if @order.valid?
      binding.pry
      @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end
end
