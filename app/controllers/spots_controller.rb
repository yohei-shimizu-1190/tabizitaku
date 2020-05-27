# frozen_string_literal: true

class SpotsController < ApplicationController
  before_action :set_spot, only: %i[index jmap]

  def index; end

  def show
    @spot = Spot.find(params[:id])
    @photo = Photo.new
    @photos = @spot.photos.includes(:user).order('created_at DESC').page(params[:page]).per(6)
  end

  def quiz; end

  def jmap; end

  private

  def set_spot
    @spots = Spot.all
  end
end
