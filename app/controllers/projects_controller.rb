class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @goal = Goal.new
    authorize @project
  end

  def new
    @project = Project.new
    authorize @project

  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
    if @project.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @project = Project.find(params[:id])
  #   authorize @project
  # end

  def update
    @project = Project.find(params[:id])
    @user = current_user
    @project.update(project_params)
    
    redirect_to project_path(@project)
    authorize @project
  end


  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to root_path
    authorize @project
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
