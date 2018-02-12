class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :age, presence: true
  validates :age, numericality: true
end
