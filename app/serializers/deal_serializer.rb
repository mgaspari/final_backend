class DealSerializer < ActiveModel::Serializer
  attributes :title, :address, :lng, :lat, :deal_day, :description, :img_link, :id
end
