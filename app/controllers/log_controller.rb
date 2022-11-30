class LogsController < ApplicationController
  def new
    @log = Log.new
    @goal = Goal.find(params[:goal_id])
    authorize @log
  end

  def create
    @log = Log.new(log_params)
    @goal = Goal.find(params[:goal_id])
    @log.goal = @goal
    authorize @log

    if @log.save
      redirect_to goal_path(@goal)
    else
      render :new, status: :unprocessable_entity
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
    params.require(:log).permit(:content)
  end
end
