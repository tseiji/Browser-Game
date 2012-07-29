class PlayersController < ApplicationController
  
  def index
    @players = current_user.players
  end
  
  def show
    @player = current_user.players.find(params[:id])
  end

  def new
    @player = current_user.players.build

  end

  def edit
    @player = current_user.players.find(params[:id])
  end

  def create
    @player = current_user.players.build(params[:player])

      if @player.save
        redirect_to @player, notice: 'Player was successfully created.'
      else
        render action: "new"
      end
  end

  def update
    @player = current_user.players.find(params[:id])

      if @player.update_attributes(params[:player])
        redirect_to @player, notice: 'Player was successfully updated.'
      else
        render action: "edit"
      end
  end

  def destroy
    @player = current_user.players.find(params[:id])
    @player.destroy


    redirect_to players_url
  end
end
