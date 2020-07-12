class CareSerializer < ActiveModel::Serializer
    attributes  :maintenance, :light, :fertilization, :plant_id
    has_one :plant 
  end