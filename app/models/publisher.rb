class Publisher < ApplicationRecord
  has_many :office_locations
  accepts_nested_attributes_for :office_locations

  validates :name, presence: true
  validates :employees, presence: true
  validates :employees, numericality: true
end
