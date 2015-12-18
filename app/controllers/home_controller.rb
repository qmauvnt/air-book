class HomeController < ApplicationController
  	include CurrentCart
	before_action :set_cart
  def index
  end
  def about
  	render :layout => false
  end
end
