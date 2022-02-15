class ProfessorsController < ApplicationController

  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])
    @average_student_age = @professor.students.average(:age).round(1)
  end

  def new
  end

  def create
    @professor = Professor.create!(prof_params)
  end

  private
    def prof_params
      params.permit(:id, :name, :age, :specialty)
    end
end
