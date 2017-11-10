require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do

    erb(:index)
  end

  post '/names' do

    p params
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])


    redirect to('/play')
  end

  get '/play' do
    @name1 = $player_1.name
    @hp1 = $player_1.hitpoints
    @name2 = $player_2.name
    @hp2 = $player_2.hitpoints
    erb(:play)
  end

  get '/attack' do
    $game = Game.new
    @player_1 = $player_1
    @player_2 = $player_2
    $game.hit($player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
