class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def previous
    Spot.where("id < ?", self.id).order("id DESC").first
  end
  
  def next
    Spot.where("id > ?", self.id).order("id ASC").first
  end
end
