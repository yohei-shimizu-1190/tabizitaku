class PhotosController < ApplicationController
  def create
    photo = Photo.create(photo_params)
    if photo.save
      redirect_to "/spots/#{photo.spot.id}", notice: 'あなたの思い出を追加しました'
    else
      @spot = Spot.find(photo.spot.id)
      @photo = Photo.new  
      @photos = @spot.photos.includes(:user)
      flash.now[:alert] = '投稿にはタイトルと写真の両方が必要です'
      render "spots/show"
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:text, :photo_image).merge(user_id: current_user.id, spot_id: params[:spot_id])
  end
end
