class GernesController < ApplicationController
def show
	@genre=Genre.find(params[:id])
end
end
