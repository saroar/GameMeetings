class MeetingsController < ApplicationController
  def index
    @q = Meeting.ransack(params[:q])
    @meetings = @q.result(distinct: true)
  end

  def new
    @meeting = Meeting.new
    @venues = Venue.all
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def create
    # binding.pry
    @meeting = Meeting.create(meeting_params)
    if @meeting.save
     redirect_to @meeting, :notice => 'Successfully create Meeting'
   else
     render :action => 'new'
   end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:title, :description,
    :venue_id, :game_date, :start_play_time, :end_play_time, :game_ids => [])
  end
end
