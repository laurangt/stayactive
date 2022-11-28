class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project = current_user
    if @project.save
      redirect_to project_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to project_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
