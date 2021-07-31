class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_pic_url

  def first_pic_url
    object.pics.first.pic_url
  end
end
