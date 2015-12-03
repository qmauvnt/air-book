class CartsController < ApplicationController
  	before_action :set_cart, only: [:show, :edit, :update, :destroy]

	def show
		@cart =Cart.find(params[:id])
	end
	def destroy
		@cart.destroy if @cart.id == session[:cart_id]
		session[:cart_id] = nil
		redirect_to shop_path
		flash[:success] = 'Your cart is currently empty'
	end
end
