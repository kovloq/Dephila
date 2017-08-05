class HotelController < ApplicationController
  def index
  	@hotel=Hotel.new
  end

  def show
  	# @hotel=Hotel.find(;id)
  end
end
