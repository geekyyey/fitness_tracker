class WaterLogsController < ApplicationController
  def index
    @water_logs = WaterLog.all
  end
end
