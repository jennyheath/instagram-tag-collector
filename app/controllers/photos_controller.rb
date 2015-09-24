class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      # ?
    else
      flash.now[:errors] = @photo.errors.full_messages
    end
  end

  def index
  end

  private

  def photo_params
    params.require(:photo).permit(:url)
  end
end
