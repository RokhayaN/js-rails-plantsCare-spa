class Plant < ApplicationRecord
    has_many :cares
    validates_presense_of :name
end
