class HomeController < ApplicationController
  def index
    @periods = Period.all
  end
end
