# frozen_string_literal: true

class Listing < ApplicationRecord
  belongs_to :breed
  enum sex: { female: 0, male: 1 }
  validates :title, :description, :sex, :price, :breed, presence: true

  # validates :state, format: { with: /[1-9][0-9][0-9][0-9]/, message: 'only allow 4 numbers' }
  validates :state, inclusion: { in: %w[VIC NSW WA TAS NT ACT QLD SA], message: '%{value} is not a valid state' }
end
