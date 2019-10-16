# frozen_string_literal: true

class Breed < ApplicationRecord
  has_many :listings
end
