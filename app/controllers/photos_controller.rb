class PhotosController < ApplicationController
  def create
    Photo.create(photo_params)
    redirect_to "/spots/#{photo.spot.id}"
  end

  private
  def photo_params
    params.require(:photo).permit(:text, :photo_image).merge(user_id: current_user.id, spot_id: params[:spot_id])
  end
end
