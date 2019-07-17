class PicCommentsController < ApplicationController

    def index
        @pic_comments = PicComment.all
        render json: @pic_comments
      end

end