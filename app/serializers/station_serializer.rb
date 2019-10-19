class StationSerializer < ActiveModel::Serializer
    has_many :pics
    has_many :users, through: :pics

    include Commentable
  
    attributes :id, :name, :slug, :likes, :coords, :address, :description
  end