class Tattoo < ApplicationRecord
  has_and_belongs_to_many :artists
  has_many :styles
  has_many :body_parts
end
