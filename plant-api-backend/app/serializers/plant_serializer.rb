class PlantSerializer < ActiveModel::Serializer
  attributes :name, :image, :description
  has_many :cares
end
