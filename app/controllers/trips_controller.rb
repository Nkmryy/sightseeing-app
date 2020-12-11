class TripsController < ApplicationController
  def index
  end

  def new
    @trip = Trip.new
  end

  def create
  end

  private

  def trip_params
    params.require(:trip).parmit(:attraction_id, :evaluation_id, :impressions, :tytle, :image).merge(user_id: current_user.id)
  end
end
