class RomanController < ApplicationController
	
	def index
		@number=Roman.new
		@roman=@number.convertir(params[:numero])	
	end

	
end
