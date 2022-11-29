class GoalsController < ApplicationController
  def show
    @project = Project.find(params[:project_id])
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
    @project = Project.find(params[:project_id])
  end

  def create
    @goal = Goal.new(goal_params)
    @project = Project.find(params[:project_id])
    @goal.project = @project
    if @goal.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    @goal = Goal.update(goal_params)
    redirect_to project_path
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to project_path
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description, :end_date, :status)
  end

end
