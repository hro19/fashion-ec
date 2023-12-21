class PaymentsController < ApplicationController
  before_action :set_cart, only: %i[checkout success]
 
  # Checkout action handles the payment process for the cart.
  # If the cart is empty, it redirects to the carts page.
  # It creates a Stripe checkout session based on the line items in the cart.
  # The session is used to initiate the payment process.
  #
  # @since Rails 5
  def checkout
    redirect_to carts_path and return if @cart.line_items.empty?
    @session = Stripe::Checkout::Session.create(StripeCheckout.make_stripe_checkout_params(cart: @cart))
  end

  def success
    @cart.line_items.delete_all
    redirect_to root_path
  end
end