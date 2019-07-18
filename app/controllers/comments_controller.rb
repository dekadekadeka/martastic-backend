class CommentsController < ApplicationController
  skip_before_action :authorized, only: [:index]

    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
      @comment = Comment.new(comment_params)
      if(@comment.save)
          render json: @comment
      else
          render json: { error: 'Failed to create comment' }, status: :unprocessible_entity
      end
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
    end

    private

    def comment_params
        params.require(:comment).permit!
    end

end