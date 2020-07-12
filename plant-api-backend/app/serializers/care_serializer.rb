class CareSerializer < ActiveModel::Serializer
    attributes  :maintenance, :light, :fertilization, :plant_id
    belongs_to :plant 
  end