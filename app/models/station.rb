class Station < ApplicationRecord
    has_many :pics
    has_many :users, through: :pics

    has_many :station_comments
end