class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @env = ENV['STRIPE_PUBLIC_KEY']
    # pp @env
    # p session
  end

  def show
    @product = Product.find(params[:id])
  end
end