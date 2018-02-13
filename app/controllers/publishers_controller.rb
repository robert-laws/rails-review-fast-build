class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end

  def show
    @publisher = Publisher.find(params[:id])
  end

  def new
    @publisher = Publisher.new
    @publisher.office_locations.build
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      redirect_to publisher_path(@publisher)
    else
      render :new
    end
  end

  private

  def publisher_params
    params.require(:publisher).permit(:name, :employees, office_locations_attributes: [:city])
  end
end
