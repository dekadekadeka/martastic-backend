class StationSerializer < ActiveModel::Serializer
    has_many :pics
    has_many :users, through: :pics
  
    attributes :id, :name, :rating
  end