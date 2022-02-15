class ProfessorController < ApplicationController

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
