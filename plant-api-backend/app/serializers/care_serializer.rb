class CareSerializer < ActiveModel::Serializer
  attributes  :maintenance, :light, :fertilization
  has_one :plant 
end