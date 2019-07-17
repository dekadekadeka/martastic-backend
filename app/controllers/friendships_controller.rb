class FriendshipsController < ApplicationController

    def index
        @friendships = Friendship.all
        render json: @friendships
      end
end
