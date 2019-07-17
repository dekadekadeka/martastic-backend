class StationComment < ApplicationRecord
    belongs_to :station
    belongs_to :user
end