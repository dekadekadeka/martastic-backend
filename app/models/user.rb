class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true 

    has_many :pics
    has_many :stations, through: :pics
    
    has_many :comments

    has_many :friendships
    has_many :friends, through: :friendships

    has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
    has_many :inverse_friends, through: :inverse_friendships, source: :user
end
