class ApplicationController < ActionController::Base
  protect_from_forgery

  def site_under_comstruction
    redirect_to "/maintanace"
  end
end
