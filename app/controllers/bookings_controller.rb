class BookingsController < ApplicationController
  prepend_before_action :save_date, only: :create

  def create
    @booking = Booking.new(booking_params)
    @dream = Dream.find(params[:dream_id])
    @booking.dream = @dream
    @booking.user = current_user
    if @booking.save
      redirect_to my_profile_path
    else
      render 'dreams/show'
    end
  end

  private

  def save_date
    unless current_user
      session[:save_date] = {
        date: params[:booking][:date],
        dream_id: params[:dream_id]
      }
    end
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
