class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @school = current_user.school
    @teachers = current_user.school.teachers.all
    @parents = current_user.school.parents.all
  end

  def parent
    @parent = Parent.find(params[:id])
  end

  def teacher
    @teacher = Teacher.find(params[:id])
  end

  def update
  end

  def create
  end
end
