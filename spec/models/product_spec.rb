require 'rails_helper'

RSpec.describe Product, type: :model do
  
  context 'validation tests' do

  	it 'should save successfully' do
  		product = Product.new(title: 'Toothbrush' , price: '5' , description: 'Firmly build', duration: 'none').save
  		expect(product).to eq(true)
  	end

  end
end
