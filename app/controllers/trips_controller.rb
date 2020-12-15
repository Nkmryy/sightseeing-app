class TripsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :derete]
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.includes(:user).order(created_at: 'DESC')
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:attraction_id, :evaluation_id, :title, :impressions, photos: []).merge(user_id: current_user.id)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
