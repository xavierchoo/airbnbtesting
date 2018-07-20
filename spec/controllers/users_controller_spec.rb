require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	# context 'GET #show' do
	# 	it 'returns a success response' do
	# 		user = User.create!(name: 'Billy',email: 'test@example.com',password: '123')
	# 		get :show, params: { id: user.to_param }
	# 		expect(response).to be_success
	# 	end
	# end

	# describe "POST #create" do
	#   let( :valid_params )          { { user: { name: 'Billy' , email: 'test@example.com' , password: '123123' }} }
	#   let( :invalid_params )        { { user: { name: "faulty" }} }


	  context "when valid params" do
	    it "should save user" do
	      user = User.create!(name: 'Billy',email: 'test@example.com',password: '123')
	      expect(User.find_by(name: 'Billy')).not_to eq nil
	    end

	    it "should redirect to #home" do
	      post :create, :params => { :user => {:name =>'Billy' , :email =>'test@example.com' , :password =>'123123'} }
	      expect(response).to redirect_to( home_path )
	    end
	  end

	  context "when invalid params" do
	    it "should rerender submission page" do
	      post :create, :params => { :user => {:email =>'test@example.com' , :password =>'123123'} }
	      expect(response).to redirect_to( sign_up_path )

	    end

	    it "shouldn't save user" do
	      post :create, :params => { :user => {:email =>'test@example.com' , :password =>'123123'} }
	      expect(User.find_by(name: 'Billy')).to eq nil
	    end
	  end

end
