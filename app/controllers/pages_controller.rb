# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    render plain: 'home page'
  end

  def not_found
    render plain: 'not found'
  end
end
