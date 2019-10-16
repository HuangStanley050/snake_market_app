# frozen_string_literal: true

class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    id = params[:id]
    @listing = Listing.find(id)
  end

  def new; end

  def create
    # finish logic for creating a record
  end

  def edit
    id = params[:id]
    @listing = Listing.find(id)
  end

  def update
    id = params[:id]
    @listing = Listing.find(id)
    # finsih logic for updating the record
  end

  def destroy
    id = params[:id]
    @listing = Listing.find(id)
    # finish logic for deleting the record
  end
end
