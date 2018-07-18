class Product < ApplicationRecord

	def self.search(search)
	  where("title iLIKE ?", "%#{search}%") 
	end
end
