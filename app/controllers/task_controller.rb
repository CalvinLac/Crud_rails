class TaskController < ApplicationController

  def index
    @tasks = Task.all
    @tasks = @tasks.sort_by { |task| task.date }
  end

  def show 
    @tasks = Task.find(params[:id])
  end

end
