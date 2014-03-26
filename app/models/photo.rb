class Photo < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  attr_accessible :image, :user_id
  mount_uploader :image, ImageUploader

  scope :recent, -> { order("created_at desc") }
end
