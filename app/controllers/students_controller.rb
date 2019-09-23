class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def activate
    @student.update(active: !@student.active)
    redirect_to action: 'show'
  end
  
  def index
    @students = Student.all
  end

  def show
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end