class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :price_per_nights, presence: true
  validates :number_of_guests, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 8}
end
