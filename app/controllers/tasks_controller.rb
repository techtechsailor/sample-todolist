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
      redirect_to root_url, notice: "登録に成功しました。"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to root_url, notice: "更新に成功しました。"
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to root_url, notice: "削除に成功しました。", status: :see_other
  end


    
  private

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end