class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @tasks = Task.all
  end

  def new
    @project = Project.new
  end

  def create
    @projects = Project.all
    @project = Project.new(project_params)
    @project.save
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @projects = Project.all
    @project = Project.find(params[:id])

    @project.update_attributes(project_params)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end


end
