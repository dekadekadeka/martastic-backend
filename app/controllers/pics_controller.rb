class PicsController < ApplicationController

    def index
        @pics = Pic.all
        render json: @pics
      end

end
