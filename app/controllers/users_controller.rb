class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :site_under_construction, only: []

  def show
    @user = User.find(params[:id])
  end
end
