class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :address, presence: true
  validates :name, length: { minimum: 4 }, presence: true
  validates :description, presence: true
end
  