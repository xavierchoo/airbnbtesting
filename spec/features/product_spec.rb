require 'rails_helper'

RSpec.describe 'create product features' do 

	it 'displays the Name:' do
		visit('/product_new')
		expect(page).to have_content('Teeth Whitening')
		click_link('Home')
		expect(current_path).to eql('/mainpage')
	end
end