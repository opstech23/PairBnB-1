class ListingsController < ApplicationController
  before_action :require_login, only: [:new]
  def index
  	@listing = Listing.all
  end

  def new
    @listing = Listing.new
  end
end
