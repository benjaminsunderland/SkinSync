class BodyPart < ApplicationRecord
  has_and_belongs_to_many :tattoos
end
