class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.create(game_params)

    if @game.save
      redirect_to @game, notice: 'Successfully create venue'
    else
      render action: 'new'
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :description)
  end
end
