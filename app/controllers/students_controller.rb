class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end
  
   def toggle_status
      # Activate page Should mark an inactive student as active
      # Activate page Should mark an active student as inactive
      # Activate page Should redirect to the student show page
    student = Student.find(params[:id])
    student.toggle(:active).save
    redirect_to student_path(student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end