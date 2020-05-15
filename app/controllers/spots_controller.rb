class SpotsController < ApplicationController
  before_action :set_spot, only: [:index, :jmap]

  def index
  end
  
  def show
    @spot = Spot.find(params[:id])
    @photo = Photo.new
    @photos = @spot.photos.includes(:user)
  end
  
  def quiz
  end
  
  def jmap
  end

  private
  def set_spot
    @spots = Spot.all
  end

end
