class ParksController < ApplicationController
  def index
    if params[:state].present?
      facade = ParksFacade.new
      @results = facade.get_state_parks(params[:state])
    else
      facade = ParksFacade.new
      @results = facade.get_parks
    end
  end
end
