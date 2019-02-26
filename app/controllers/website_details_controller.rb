class WebsiteDetailsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if current_user
      if current_user.profile_status
        redirect_to dashboard_admins_path if current_user.admin
        redirect_to dashboard_teachers_path if current_user.teacher
        redirect_to dashboard_students_path if current_user.student
      end
    else
      print "Programming"
    end
  end
end
