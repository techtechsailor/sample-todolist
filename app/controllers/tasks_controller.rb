class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end