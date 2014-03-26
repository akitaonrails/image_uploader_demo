class ProcessImageWorker
  include Sidekiq::Worker

  def perform(photo_id, url)
    photo = Photo.find(photo_id)
    photo.remote_image_url = url
    photo.image_processing = nil
    photo.save!
  end
end
