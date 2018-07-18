class GalleryController < ApplicationController
	skip_before_action :verify_authenticity_token
	def new
		@gallery = Gallery.new
	end

	def create
		if gallery_params != ''

			@gallery = Gallery.new(gallery_params)
			@gallery.custid = current_user.id
			if @gallery.save
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
			params.permit(:title , :description ,:image_link)
		end

end
