class PhotosController < ApplicationController
  before_action :set_spot
  def create
    photo = Photo.create(photo_params)
    if photo.save
      redirect_to spot_path(@spot), notice: 'あなたの思い出を追加しました'
    else
      @spot = Spot.find(photo.spot.id)
      @photo = Photo.new  
      @photos = @spot.photos.includes(:user)
      flash.now[:alert] = '投稿にはタイトルと写真の両方が必要です'
      render "spots/show"
    end
  end

  def destroy
    @photo = @spot.photos.find(params[:id])
    @photo.destroy
    redirect_to spot_path(@spot), notice: '削除が完了しました'
  end

  private
  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def photo_params
    params.require(:photo).permit(:text, :photo_image).merge(user_id: current_user.id, spot_id: params[:spot_id])
  end
end
