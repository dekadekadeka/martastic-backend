class SinglePicSerializer < ActiveModel::Serializer
  include Commentable
  belongs_to :user

  attributes attributes :id, :pic_url, :likes
end
