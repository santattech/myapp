class HomesController < ApplicationController
  before_filter :site_under_comstruction, only: []

  def index

  end
end
