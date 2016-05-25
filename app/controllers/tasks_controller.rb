class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.all
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @tasks = Task.all
    @task = Task.find(params[:id])

    @task.update_attributes(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to projects_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :project_id)
  end

end
