require 'spec_helper'

describe UsersController do
  let(:user) { create(:user) }

  before(:each) do
    sign_in user
  end

  describe "GET #show" do
    it "should return the user" do
      get :show, id: user.id
      assigns(:user).should eq(user)
    end
  end

  describe "GET #edit" do
    it "should return the user to edit" do
      get :show, id: user.id
      assigns(:user).should eq(user)
    end
  end

  describe "PUT #update" do
    let(:first_name) { Faker::Name.first_name }
    let(:last_name)  { Faker::Name.last_name }

    before do
      put :update, id: user.id, user: { first_name: first_name, last_name: last_name }
    end

    it "should update user and save first_name" do
      assigns(:user).first_name.should eq(first_name)
    end

    it "should update user and save last_name" do
      assigns(:user).last_name.should eq(last_name)
    end

    it "should redirect_to edit page of user" do
      response.should redirect_to edit_user_path(user)
    end
  end
end
