class PhotosController < ApplicationController
  def create
    @photo = current_user.photos.build
    if params[:url]
      @photo.remote_image_url = params[:url]
    else
      @photo.attributes = params[:photo]
    end
    @photo.save
    redirect_to root_path
  end
end
