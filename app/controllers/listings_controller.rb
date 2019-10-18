# frozen_string_literal: true

class ListingsController < ApplicationController
  before_action :set_listing, only: %i[show edit update destroy]
  def index
    @listings = Listing.all
  end

  def show; end

  def new
    @listing = Listing.new
  end

  def create
    listing_params = params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :city, :state, :date_of_birth, :diet)
    @listing = Listing.new(listing_params)

    if @listing.save
      # byebug
      redirect_to @listing
    else
      # byebug
      # puts 'error occured'
      # puts @listing.errors.messages
      render 'new'
    end
    # redirect_to @listing
    # finish logic for creating a record
  end

  def edit; end

  def update
    # finsih logic for updating the record
    listing_params = params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :city, :state, :date_of_birth, :diet)
    # @listing = Listing.new(listing_params)

    @listing.update(listing_params)
    redirect_to @listing
  end

  def destroy
    # finish logic for deleting the record
    @listing.destroy
    redirect_to listings_path
  end

  private

  def set_listing
    id = params[:id]
    @listing = Listing.find(id)
  end
end
