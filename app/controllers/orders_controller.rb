class OrdersController < ApplicationController

def create
  @user = User.find(params[:order][:user_id])
  @order = @user.orders.new(orders_params)
  if @order.save
    redirect_to(controller: "zakirs",action: "index", :id=>@user.id)
  else
  end
end
private
  def orders_params
    params.require(:order).permit(:totalprice,:items,:user_id)
  end
end
