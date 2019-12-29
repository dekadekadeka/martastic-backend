class FriendshipsController < ApplicationController
  before_action :authorized, only: [:create, :destroy]

    def index
        @friendships = Friendship.all
        render json: @friendships
    end

    def create
      @friendship = Friendship.create(friendship_params)
      if(@friendship.save)
          render json: @friendship
      else
          render json: { error: 'failed to add friend' }, status: :unprocessible_entity
      end
    end

    def destroy
      @friendship = Friendship.find(params[:id])
      @friendship.destroy
    end

    private

    def friendship_params
      params.require(:friendship).permit(:user_id, :friend_id)
    end
end
