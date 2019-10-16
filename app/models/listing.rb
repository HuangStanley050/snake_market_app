# frozen_string_literal: true

class Listing < ApplicationRecord
  belongs_to :breed
  enum sex: { female: 0, male: 1 }
end
