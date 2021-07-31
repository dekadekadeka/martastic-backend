class Pic < ApplicationRecord
  belongs_to :user
  belongs_to :station

  include Commentable
end
