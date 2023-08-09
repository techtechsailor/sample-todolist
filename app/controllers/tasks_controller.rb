class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_url
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end


    
  private

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end