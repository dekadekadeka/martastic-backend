class PicsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

    def index
        @pics = Pic.all
        render json: @pics
      end

    def show
      @pic = Pic.find(params[:id])
      render json: @pic
    end

    def create
      @pic = Pic.new(pic_params)
      if(@pic.save)
          render json: @pic
      else
          render json: { error: 'failed to add pic' }, status: :unprocessible_entity
      end
    end

    def destroy
      @pic = Pic.find(params[:id])
      @pic.destroy
    end

    private

    def pic_params
      params.require(:user).permit(:user_id, :station_id, :pic_url, :rating)
    end

end
