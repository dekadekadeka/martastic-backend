class StationCommentSerializer < ActiveModel::Serializer
    belongs_to :station
    belongs_to :user
  
    attributes :id, :user_id, :station_id, :content
  end