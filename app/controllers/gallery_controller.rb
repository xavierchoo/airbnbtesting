class GalleryController < ApplicationController
	skip_before_action :verify_authenticity_token
	def new
		@gallery = Gallery.new
	end

	def create
		if gallery_params != ''

			@gallery = Gallery.new(gallery_params)
			@recipe.user_id = current_user.id
			if @recipe.save
				redirect_to '/mainpage'
			else
				redirect_to '/new'
			end

		else
			render 'new'
		end
	end

	private

		def gallery_params
			params.require(:recipe).permit(:name , :ingredient , :step ,:description ,:category)
		end

end
