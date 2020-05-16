# frozen_string_literal: true

class Spot < ApplicationRecord
  has_many :photos, dependent: :destroy
end
