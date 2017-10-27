class Artist < ApplicationRecord
  has_and_belongs_to_many :tattoos
  belongs_to :parlour
  belongs_to :rating
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
