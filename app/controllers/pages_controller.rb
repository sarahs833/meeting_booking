class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if current_user
      @meetings = current_user.meetings
    else
      @meetings = Meeting.all
    end
  end
end
