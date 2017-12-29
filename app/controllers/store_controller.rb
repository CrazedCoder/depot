class StoreController < ApplicationController
  
  def index
  	@products = Product.order(:title)
  	@count = increment_counter
  	@show_message = "Count: #{@count}" if @count > 5 
  end

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end

end
