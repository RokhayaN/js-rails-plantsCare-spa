class Plant < ApplicationRecord
    has_many :cares
    validates_presence_of :name
end
