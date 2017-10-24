class Tattoo < ApplicationRecord
  
  mount_uploader :image_link, ImageUploader
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :styles
  has_and_belongs_to_many :body_parts

end
