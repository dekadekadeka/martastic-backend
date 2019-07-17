class PicSerializer < ActiveModel::Serializer
    belongs_to :user
    belongs_to :station
    has_many :pic_comments
  
    attributes :id, :user_id, :station_id, :pic_url, :rating
  end