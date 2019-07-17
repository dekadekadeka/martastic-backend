class PicSerializer < ActiveModel::Serializer
    belongs_to :user
    belongs_to :station

    include Commentable
  
    attributes :id, :user_id, :station_id, :pic_url, :rating
  end