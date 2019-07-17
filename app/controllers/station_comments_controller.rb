class StationCommentsController < ApplicationController

    def index
        @station_comments = StationComment.all
        render json: @station_comments
      end

end