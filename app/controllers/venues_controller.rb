class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def create
    @venue = Venue.create(venue_params)
    if @venue.save
      redirect_to @venue, notice: 'Successfully create venue'
    else
      render action: 'new'
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:address, :latitude, :longitude)
  end
end
