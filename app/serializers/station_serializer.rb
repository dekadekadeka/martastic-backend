class StationSerializer < ActiveModel::Serializer
    has_many :pics
    has_many :users, through: :pics

    include Commentable
  
    attributes :id, :name, :rating
  end