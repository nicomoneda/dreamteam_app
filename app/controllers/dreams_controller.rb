class DreamsController < ApplicationController
  def index
    @dreams = Dream.all
  end

  def show
    @dream = Dream.find(params[:id])
  end

  private
  def dreams_params
    params.require(:dream).permit(:name)
  end
end
