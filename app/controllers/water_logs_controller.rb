class WaterLogsController < ApplicationController
  def index
    @water_logs = WaterLog.all
    render json: @water_logs
  end

  def create
    @water_log = WaterLog.new(water_log_params)
    if @water_log.save
      render json: @water_log, status: :created
    else
      render json: { errors: @water_log.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def water_log_params
    params.require(:water_log).permit(:date, :intake, :goal)
  end
end
