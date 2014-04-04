class ProcessImageWorker
  include Sidekiq::Worker

  def perform(photo_id, url)
    Photo.find(photo_id).tap do |photo|
      photo.remote_image_url = url
      photo.image_processing = nil
      photo.save!
    end
  end
end
