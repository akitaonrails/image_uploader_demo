class Photo < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  validates :original_image_url, presence: true
  validates :comment, length: { maximum: 140 }

  attr_accessible :image, :user_id, :original_image_url, :comment
  mount_uploader :image, ImageUploader

  before_save :check_url
  after_save :process_async

  scope :recent, -> { order("created_at desc") }

  private

  def check_url
    self.image_processing = true if new_record? && original_image_url
  end

  def process_async
    ProcessImageWorker.perform_async(self.id, original_image_url) if original_image_url and image_processing
  end
end
