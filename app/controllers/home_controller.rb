class HomeController < ApplicationController
  def index
    @photo = current_user.photos.build if current_user.present?
    @photos = Photo.recent.page params[:page]
  end
end
