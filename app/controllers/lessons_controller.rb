class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_enrollment_for_lessons, only: [:show]

  def show

  end

private

helper_method :current_lesson

  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

  def require_enrollment_for_lessons
    if !current_user.enrolled_courses.include?(current_lesson.section.course)
      redirect_to root_path, alert: 'You Must Enroll In A Course Before Viewing Lessons'
    end
  end

end
