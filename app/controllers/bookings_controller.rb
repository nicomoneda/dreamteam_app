class BookingsController < ApplicationController
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

  private

  def booking_params
    params.require(:booking).permit(:booking_id, :date)
  end
end
