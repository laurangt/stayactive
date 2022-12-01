class LogsController < ApplicationController
  def new
    @goal = Goal.find(params[:goal_id])
    @log = Log.new
    authorize @log
  end

  def create
    @goal = Goal.find(params[:goal_id])
    @log = Log.new(log_params)
    @log.goal = @goal
    authorize @log
    #@project = Project.find(params[:project_id])

    if @log.save
      redirect_to goal_path(@goal)
    else
      render "goals/show", status: :unprocessable_entity
    end
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to goal_path
    authorize @log
  end

  private

  def log_params
    params.require(:log).permit(:content, :photo)
  end
end
