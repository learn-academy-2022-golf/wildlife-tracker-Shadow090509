class TrackersController < ApplicationController
    def index
      trackers = Tracker.all 
      render json: trackers
    end

  def show
    tracker = Tracker.find(params[:id])
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
    params.require(:tracker).permit(:latitude, :longitude, :date, :animal_id)
  end
end
