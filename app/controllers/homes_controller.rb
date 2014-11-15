class HomesController < ApplicationController
  before_filter :site_under_construction, only: []

  def index
  end
end
