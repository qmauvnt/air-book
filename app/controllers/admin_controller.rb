class AdminController < ApplicationController
  def index
 	render :layout => "admin"
  end
  def user
  	render :layout => "admin"
  	@users=User.all
  end
end
