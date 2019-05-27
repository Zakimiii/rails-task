class Property < ApplicationRecord
  has_many :stations, inverse_of: :property, dependent: :destroy
  accepts_nested_attributes_for :stations
end
