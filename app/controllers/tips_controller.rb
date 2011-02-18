class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @tip = Tip.new(params[:tip])
  end
  
  def create
    @venue = Venue.find(params[:venue_id])
    @tip = @venue.tips.new(params[:tip])
    if @tip.save
      redirect_to venue_path(@venue)
      flash[:notice] = "Tip created."
    else
      render :action => "new"
    end
  end

  def edit
    @venue = Venue.find(params[:venue_id])
    @tip = Tip.find(params[:id])
  end
  
  def update
    @venue = Venue.find(params[:venue_id])
    @tip = Tip.find(params[:id])
    if @tip.update_attributes(params[:tip])
      redirect_to venue_path(@venue)
      flash[:notice] = "Tip saved."
    else
      render :action => "edit"
    end
  end

  def show
    @venue = Venue.find(params[:venue_id])
    @tip = Tip.find(params[:id])
  end
  
  def destroy
    @venue = Venue.find(params[:venue_id])
    @tip = Tip.find(params[:id])
    @tip.delete
    redirect_to venue_path(@venue)
    flash[:notice] = "Tip deleted."
  end
end
