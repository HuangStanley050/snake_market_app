# frozen_string_literal: true

class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]
  def success
    userId = params['userId']
    listingId = params['listingId']
    @purchaser = User.find(userId).email
    @item = Listing.find(listingId).title
    @price = Listing.find(listingId).price
    # puts "#{User.find(userId).email} purchased..."
    # puts "The item is #{Listing.find(listingId).title}"
    # puts "The price is #{Listing.find(listingId).price}"
  end

  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    listing_id = payment.metadata.listing_id
    user_id = payment.metadata.user_id

    p 'listing id ' + listing_id
    p 'user id ' + user_id
    # details of what you bough from the returned params
    status 200
  end
end
