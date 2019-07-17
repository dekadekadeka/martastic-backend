class Pic < ApplicationRecord
    belongs_to :user
    belongs_to :station

    has_many :pic_comments
end