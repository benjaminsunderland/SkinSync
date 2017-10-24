class Artist < ApplicationRecord
  has_and_belongs_to_many :tattoos
  belongs_to :parlour
end
