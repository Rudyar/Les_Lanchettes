class HomeController < ApplicationController
  
  def index
    @periods = Period.all
    @availabilities = Availability.all
  end

end
