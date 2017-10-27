class Parlour < ApplicationRecord
  has_many :artists

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :location, presence: true, length: { minimum: 3 }
  validates :contact, presence: true, length: { minimum: 11 }
  validates :description, presence: true, length: { minimum: 3 }
end
