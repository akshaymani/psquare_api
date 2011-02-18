class CheckinsController < ApplicationController
  def index
    @checkins = Checkin.all
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @checkin = Checkin.new(params[:checkin])
  end
  
  def create
    @venue = Venue.find(params[:venue_id])
    @checkin = @venue.checkins.new(params[:checkin])
    if @checkin.save
      redirect_to venue_path(@venue)
      flash[:notice] = "Checkin created."
    else
      render :action => "new"
    end
  end

  def edit
    @venue = Venue.find(params[:venue_id])
    @checkin = Checkin.find(params[:id])
  end
  
  def update
    @venue = Venue.find(params[:venue_id])
    @checkin = Checkin.find(params[:id])
    if @checkin.update_attributes(params[:checkin])
      redirect_to venue_path(@venue)
      flash[:notice] = "Checkin saved."
    else
      render :action => "edit"
    end
  end

  def show
    @venue = Venue.find(params[:venue_id])
    @checkin = Checkin.find(params[:id])
  end
  
  def destroy
    @venue = Venue.find(params[:venue_id])
    @checkin = Checkin.find(params[:id])
    @checkin.delete
    redirect_to venue_path(@venue)
    flash[:notice] = "Checkin deleted."
  end
end
