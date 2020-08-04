class Picture < ApplicationRecord
  validates :image, presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
end
