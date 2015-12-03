class LineItemsController < ApplicationController
include CurrentCart
before_action :set_cart, only: [:create]
before_action :set_line_item, only: [:show, :edit, :update, :destroy]

def new
	@line_items = LineItems.new
end

def create
	book = Book.find(params[:book_id])
	@line_items = @cart.add_book(params[:book_id])
	if @line_items.save
		redirect_to @line_items.cart
		flash[:success] = "Line items successfully created..."
	else
		render 'new'
	end
end

def line_item_params
	params.require(:line_item).permit(:book_id)
end
end
