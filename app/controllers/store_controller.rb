class StoreController < ApplicationController
  def index
	@products = Product.order(:title)
        @cart = current_cart
        @session_counter = 0
        if session[:counter].nil?
          session[:counter] = 0
        else 
          session[:counter] += 1
        end
        @session_counter = session[:counter]
        @session_counter
  end
end
