# encoding: utf-8
class GoldController < ApplicationController
  def update
    player = current_user.players.find(params[:player_id]) Player
    
    
    if player.change_gold!(params[:id].to_i)
      redirect_to :back, :notice => "Voc‪e esta agora com #{player.gold} gold"
      else
      redirect_to :back, :error => "nao foi possivel alterar seu gold"
      end
    
  end
end
