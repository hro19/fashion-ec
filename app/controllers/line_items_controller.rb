class LineItemsController < ApplicationController
  def create
    cart = Cart.find(session[:cart_id])
    product = Product.find(params[:product_id])
 
    if cart.products.include?(product)
      line_item = cart.line_items.find_by(product_id: product)
      line_item.quantity += params[:quantity].to_i
    else
      line_item = LineItem.new
      line_item.cart = cart
      line_item.product = product
      line_item.quantity = params[:quantity]
    end
 
    line_item.save
    redirect_to root_path()
  end
end