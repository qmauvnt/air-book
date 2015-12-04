class BooksController < ApplicationController
def index
	@books=Book.all
end
def destroy
	@book.destroy
end
def show
	@book = Book.find(params[:id])	
end

def who_bought
@book = book.find(params[:id])
@latest_order = @book.orders.order(:updated_at).last
if stale?(@latest_order)
respond_to do |format|
format.atom
end
end
end
end
