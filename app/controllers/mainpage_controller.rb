class MainpageController < ApplicationController
	# before_action :authorize

  def index
  	@products = Product.all
  end
end
