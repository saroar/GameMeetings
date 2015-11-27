class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def new
    @meeting = Meeting.new
  end

  def create
    Meeting.create(meeting_params)
    redirect_to root_path
  end

  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :venue, :game_date, :start_play_time, :end_play_time)
  end
end
