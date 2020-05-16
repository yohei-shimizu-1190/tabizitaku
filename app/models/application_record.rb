# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def previous
    Spot.where('id < ?', id).order('id DESC').first
  end

  def next
    Spot.where('id > ?', id).order('id ASC').first
  end
end
