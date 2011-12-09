class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @products = Product.order(:title)
    @cart= current_cart
  end

end
