class StationsController < ApplicationController
  skip_before_action :authorized, only: [:index, :update, :show]

    def index
        @stations = Station.all
        render json: @stations
    end

    def update
      @station = Station.find(params[:id])
      if @station.update(station_params)
        render json: @station, status: :accepted
      else
        render json: {error: 'failed to add like'}, status: :not_acceptable
      end
    end

    def show
      @station = Station.find(params[:id])
      render json: @station
    end

    private

    def station_params
      params.require(:station).permit(:likes)
    end

end
