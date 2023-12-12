class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
    if @listing.destroy!
      redirect_to root_path
    else
      render :destroy, notice: 'Something went wrong ...'

    end
  end
end
