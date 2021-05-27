class DreamsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @dreams = Dream.search_by_name_description_category(params[:query]) 
    else
      @dreams = Dream.all
    end
  end

  def show
    @dream = Dream.find(params[:id])
    @booking = Booking.new
  end

  def new
    @dream = Dream.new
    @select_choice = Dream.all.map do |d|
       d.category
    end
  end

  def create
    @dream = Dream.new(dreams_params)
    @dream.owner = current_user
    if @dream.save
      redirect_to my_profile_path
    else
      render :new
    end
  end

  def edit
    @dream = Dream.find(params[:id])
    @select_choice = Dream.all.map do |d|
      d.category
    end
  end

  def update
    @dream = Dream.find(params[:id])
    @dream.update(dreams_params)

    redirect_to dream_path(@dream)
  end

  def destroy
    @dream = Dream.find(params[:id])
    @dream.destroy
    redirect_to my_profile_path
  end

  private

  def dreams_params
    params.require(:dream).permit(:name, :description, :price, :transpiration_level, :category, :photo)
  end
end
