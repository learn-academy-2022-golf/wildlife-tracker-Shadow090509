class TrackersController < ApplicationController
    def index
      trackers = Tracker.where(date: params[:start_date]..params[:end_date]) 
      render json: trackers
    end

  def show
    tracker = Tracker.find(id: params[:id])
    render json:tracker
  end

  def create
    tracker = Tracker.create(tracker_params)
    if tracker.valid?
      render json:tracker
    else
      render json:tracker.errors
    end
  end

  def update
    tracker = Tracker.find(params[:id])
    tracker.update(tracker_params)
    if tracker.valid?
      render json:tracker
    else
      render json:tracker.errors
    end
  end
  def destroy
    tracker = Tracker.find(params[:id])
    if tracker.destroy
      render json:tracker
    else
      render json:tracker.errors
    end
  end

  private
  def tracker_params
    params.require(:tracker).permit(:start_date, :end_date, :latitude, :longitude, :date, :animal_id)
  end
end
