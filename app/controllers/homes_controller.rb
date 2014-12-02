class HomesController < ApplicationController
  before_filter :site_under_construction, only: [:about, :contact, :help]

  def index
    unless current_user
      redirect_to new_user_session_path
    end
  end

  def about
  end

  def contact
  end

  def help
  end
end
