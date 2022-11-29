class GoalsController < ApplicationController
  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.project = Project.find(params[:project_id])
    @goal.user = current_user
    if @goal.save
      redirect_to goal_create_path
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
