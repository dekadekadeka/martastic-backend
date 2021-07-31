class PicSerializer < ActiveModel::Serializer
  attributes :id, :pic_url, :station_name

  def station_name
    object.station.name
  end
end
