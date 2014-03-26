class PhotosController < ApplicationController
  def create
    @photo = Photo.new(params[:photo])
    @photo.user = current_user
    @photo.save
    redirect_to root_path
  end
end
