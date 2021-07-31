class AssociatedUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_pic_url, :bio, :home_station
end
