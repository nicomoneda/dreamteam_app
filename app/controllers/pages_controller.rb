class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @hide_navbar = true
  end

end
