class ApplicationController < ActionController::Base
  protect_from_forgery

  def site_under_construction
    redirect_to "/maintanace"
  end

  private

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
      if resource.is_a?(User)
        p "1111111111111111111111111111111111111111111111111111111111111111"
        redirect_to homes_path and return
      else
        p "222222222222222222222222222222222222222222222222222222"
        super
      end
  end
end
