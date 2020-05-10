class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def quiz
  end
  
  def jmap
    @spots = Spot.all
  end
end
