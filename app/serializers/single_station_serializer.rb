class SingleStationSerializer < ActiveModel::Serializer
  include Commentable
  attributes :id, :name, :likes, :coords, :address, :description, :first_pic_url

  def first_pic_url
    object.pics.first.pic_url
  end
end
