require 'rails_helper'

RSpec.describe 'Home features' do 

	it 'displays the name of the app' do
		visit('/mainpage')
		expect(page).to have_content('Dental CLinic')
	end
end