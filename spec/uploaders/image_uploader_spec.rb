require 'spec_helper'

describe ImageUploader do
  include CarrierWave::Test::Matchers

  before do
    ImageUploader.enable_processing = true
    @photo = Photo.new.tap do |photo|
      photo.process_image_upload = true
      photo.attributes = attributes_for(:photo)
      photo.save
    end
    @uploader = @photo.image
  end

  after do
    ImageUploader.enable_processing = false
    @uploader.remove!
  end

  context 'the normal version' do
    it "should scale down an image to be exactly 300 by 300 pixels" do
      @uploader.normal.should have_dimensions(234, 300)
    end
  end
end
