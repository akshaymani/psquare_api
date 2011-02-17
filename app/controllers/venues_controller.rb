class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new(params[:venue])
  end
  
  def create
    @venue = Venue.new(params[:venue])
    if @venue.save
      redirect_to venues_path
      flash[:notice] = "Venue created."
    else
      render :action => "new"
    end
  end

  def edit
    @venue = Venue.find_by_permalink(params[:id])
  end
  
  def update
    @venue = Venue.find_by_permalink(params[:id])
    if @venue.update_attributes(params[:venue])
      redirect_to venue_path(@venue)
      flash[:notice] = "Venue saved."
    else
      render :action => "edit"
    end
  end

  def show
    @venue = Venue.find_by_permalink(params[:id])
  end
  
  def destroy
    @venue = Venue.find_by_permalink(params[:id])
    @venue.delete
    redirect_to venues_path
    flash[:notice] = "Venue deleted."
  end
end
