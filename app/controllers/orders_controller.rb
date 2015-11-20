class OrdersController < ApplicationController


	def index
		@orders = Order.all
	end

	def show
	    @order = Order.find(params[:id])
	end

	def new
	 	@order = Order.new
	end

	# 	def show
	# 		@lunch_order = LunchOrder.find(params[:name])
	# 	end

	def create

			@order = Order.new(order_params) 
			  if @order.save
	 		  redirect_to @order
	 		else
	 			render 'new'
	 		end
	end

		private
	 	  	def order_params
	 	    	params.require(:order).permit(:date, :order)
	 	  	end

 end
