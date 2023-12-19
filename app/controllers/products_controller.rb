class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @env = ENV['STRIPE_PUBLIC_KEY']
    # pp @env
  end

  def show
    @product = Product.find(params[:id])
  end
end