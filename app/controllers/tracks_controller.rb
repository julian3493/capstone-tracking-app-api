class TracksController < ApplicationController
  include CurrentUserConcern

  def index
    if @current_user
      tracks = @current_user.tracks
      render json: {
        status: 'success',
        registers: tracks
      }
    else
      render json: { status: 'failed' }
    end
  end

  def create
    track = @current_user.tracks.create(track_params)
    if track
      render json: {
        status: 'created',
        track: track
      }
    else
      render json: {
        status: 500,
        params: track_params
      }
    end
  end

  private

  def track_params
    params.require(:track).permit(:electrodomestic, :day, :time_connected, :watts, :user_id)
  end
end
