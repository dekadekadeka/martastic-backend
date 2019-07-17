class Station < ApplicationRecord
    has_many :pics
    has_many :users, through: :pics

    include Commentable
end