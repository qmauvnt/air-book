class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  def new
	if @cart.line_items.empty?
		flash.now[:error] = "Giỏ hàng đã rỗng"
		return
	end
		@order = Order.new(name: current_user.name, email: current_user.email)
  end

  def show
  	@order=Order.find(params[:id])
  	if current_user.admin?
        render :layout =>"admin"
      else
        render :layout => "application"
      end
  end
  def destroy
  	Order.find(params[:id]).destroy
  	flash[:success] = "Đã hủy đơn hàng thành công"
  	redirect_to orders_path
  end
  def create
	@order = Order.new(order_params)
	@order.add_line_items_from_cart(@cart)
		if @order.save
			Cart.destroy(session[:cart_id])
			session[:cart_id] = nil
			OrderNotifier.received(@order).deliver_now
			flash[:success] = "Đã gửi đơn hàng thành công"
			redirect_to root_path
		else
			render 'new'
		end
  end
private
def order_params
	params.require(:order).permit(:name,:address,:email,:pay_type)	
end

end
