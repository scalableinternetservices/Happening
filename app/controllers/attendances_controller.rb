class AttendancesController < ApplicationController
  def create
    event = Event.find(params[:occasion_id])
    current_user.attend(event)
    respond_to do |format|
      format.html { redirect_to event }
      format.js
    end
  end

  def destroy
    event = Attendance.find(params[:id]).occasion
    current_user.unattend(event)
    respond_to do |format|
      format.html { redirect_to event }
      format.js
    end
  end
end
