class HomesController < ApplicationController
  before_filter :site_under_comstruction, only: [:index]

  def index

  end
end
