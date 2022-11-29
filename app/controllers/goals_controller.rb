class GoalsController < ApplicationController
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
    
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy

  end

  private


  def goal_params
    params.require(:goal).permit(:title, :description, :end_date, :status)
  end

end
