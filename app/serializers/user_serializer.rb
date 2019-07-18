class UserSerializer < ActiveModel::Serializer
    has_many :pics
    has_many :stations, through: :pics

    # has_many :friendships
    has_many :friends, through: :friendships

    # has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
    # has_many :inverse_friends, through: :inverse_friendships, source: :user

    include Commentable
  
    attributes :id, :name, :username, :profile_pic_url, :bio, :location, :home_station
  end