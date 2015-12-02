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
end
