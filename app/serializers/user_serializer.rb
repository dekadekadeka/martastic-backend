class UserSerializer < ActiveModel::Serializer
  include Commentable
  has_many :pics
  has_many :stations, through: :pics

  has_many :friends, through: :friendships

  attributes :id, :name, :username, :profile_pic_url, :bio, :location, :home_station
end
