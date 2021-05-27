class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if session[:save_date]
      booking = Booking.create!(date: session[:save_date]['date'],
                            dream_id: session[:save_date]['dream_id'],
                            user: current_user
       )
      my_profile_path
    else
      dreams_path
    end
  end
end
