class RequestsController < ApplicationController

	before_action :authenticate_user!

	def create
		@request = Request.new(request_params)
	end 

	def index
		@requests = Request.all
	end 

	def destroy
		@request = Request.find(params[:id])
		@request.destroy
	end 

	private 

	def request_params
		params.require(:request).permit(:name, :type, :amount, :description, :date, :account_id, :child_id)
	end 

end
