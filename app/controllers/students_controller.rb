class StudentsController < ApplicationController

  def new
  end

  def index
    @students = Student.all
  end

  def create
    @students = Student.create!(student_params)
  end

  private
    def student_params
      params.permit(:id, :name, :age, :house)
    end
end
