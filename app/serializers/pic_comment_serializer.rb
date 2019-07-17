class PicCommentSerializer < ActiveModel::Serializer
    belongs_to :pic
    belongs_to :user
  
    attributes :id, :user_id, :pic_id, :content
  end