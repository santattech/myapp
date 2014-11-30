class UsersController < ApplicationController
  before_filter :authenticate_user!
  #before_filter :site_under_construction

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to edit_user_path(@user), notice: "Updated successfully." unless request.xhr?
  end
end
