class ProductController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :authorize
	def index
		@products = Product.all

	end

	def new
		@product = Product.new
	end

	def create
		if product_params != ''

			@product = Product.new(product_params)

			if @product.save
				redirect_to '/product'
			else
				redirect_to '/product_new'
			end

		else
			render '/product_new'
		end
	end

	private

		def product_params
		  params.permit(:title ,:price,:duration, :description )
		end

end
