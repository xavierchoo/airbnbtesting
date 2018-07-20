class LikesController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new
		
	end

	def update
		
		@like = Like.find(1)
		@current_likes = @like.likes
		@future_likes = @current_likes+= 1;
		@like.likes = @future_likes
		@like.save
	end

	def get
		@like = Like.find(1)
		@current_likes = @like.likes
		render :json => @current_likes.to_json
		# like = Like.new
		# like.likes=1;
		# like.save
	end


end
