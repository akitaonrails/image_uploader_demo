class Photo < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  validates :remote_image_url, presence: true
  validates :comment, length: { maximum: 140 }

  attr_accessible :image, :user_id, :remote_image_url, :comment
  mount_uploader :image, ImageUploader
  process_in_background :image

  scope :recent, -> { order("created_at desc") }
end
