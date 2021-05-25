class DreamsController < ApplicationController
  def index
    @dreams = Dream.all
  end

  def show
    @dream = Dream.find(params[:id])
  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dreams_params)
    if @dream.save
      redirect_to dreams_path(@dream)
    else
      render :new
    end
  end

  def edit
    @dream = Dream.find(params[:id])
  end

  def update
    @dream = Dream.find(params[:id])
    @dream.update(dreams_params)

    redirect_to dream_path(@dream)
  end

  private

  def dreams_params
    params.require(:dream).permit(:name, :description, :price, :transpiration_level, :category, :photo)
  end
end
