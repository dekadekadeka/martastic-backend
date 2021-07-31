class PicsController < ApplicationController
  skip_before_action :authorized, only: [:index, :update, :show]

  def index
    @pics = Pic.all
    render json: @pics, each_serializer: PicSerializer
  end

  def show
    @pic = Pic.find(params[:id])
    render json: @pic, serializer: SinglePicSerializer
  end

  def create
    @pic = Pic.create(pic_params)
    if @pic.save
      render json: @pic
    else
      render json: { error: 'failed to add pic - did you select a station?' }, status: :unprocessible_entity
    end
  end

  def update
    @pic = Pic.find(params[:id])
    if @pic.update(pic_params)
      render json: @pic, status: :accepted
    else
      render json: { error: 'failed to update pic' }, status: :not_acceptable
    end
  end

  def destroy
    @pic = Pic.find(params[:id])
    @pic.destroy
  end

  private

  def pic_params
    params.require(:pic).permit(:user_id, :station_id, :pic_url, :likes)
  end
end
