# frozen_string_literal: true

class AddUserToListing < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :user, foreign_key: true
  end
end
