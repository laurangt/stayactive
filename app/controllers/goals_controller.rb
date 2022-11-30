class GoalsController < ApplicationController
  def show
    @project = Project.find(params[:project_id])
    @goal = Goal.find(params[:id])
    @log = Log.new
    authorize @goal
  end

  def new
    @goal = Goal.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @goal = Goal.new(goal_params)
    @goal.project = @project
    authorize @goal
    if @goal.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @goal = Goal.find(params[:id])
    authorize @goal
  end

  def update
    @goal = Goal.find(params[:id])
    redirect_to project_path
    authorize @goal
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to project_path
    authorize @goal
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description, :end_date, :status)
  end

end
