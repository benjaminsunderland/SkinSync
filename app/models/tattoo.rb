class Tattoo < ApplicationRecord
  has_many :body_parts
  mount_uploader :image_link, ImageUploader
end
