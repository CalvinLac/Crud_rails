class TaskController < ApplicationController

  def index
    @tasks = Task.all
    @tasks = @tasks.sort_by { |task| task.date }
  end

  def show 
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new(task_params)
    @tasks.save
  end



  private
  def task_params
      params.permit(:title, :descripton, :date)
  end

end
