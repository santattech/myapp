class ApplicationController < ActionController::Base
  protect_from_forgery

  def site_under_construction
    redirect_to "/maintanace"
  end
end
