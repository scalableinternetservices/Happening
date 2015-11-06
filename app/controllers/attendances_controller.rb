class AttendancesController < ApplicationController
  def create
    event = Event.find(params[:occasion_id])
    current_user.attend(event)
    redirect_to event
  end

  def destroy
    event = Attendance.find(params[:id]).occasion
    current_user.unattend(event)
    redirect_to event
  end
end
