class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  validates :text, :photo_image, presence: true

  mount_uploader :photo_image, ImageUploader
end
