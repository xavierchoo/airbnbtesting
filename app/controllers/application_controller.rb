
class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception


	def get_request (request)
	  uri = URI.parse(request)
	  res = Net::HTTP.get_response(uri)
	end
	
	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

	def authorize
	  redirect_to '/mainpage' unless current_user
	end
end
