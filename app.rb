require 'sinatra/base'
require_relative './lib/player'
class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end
  
  get '/play' do #instance vars can only be seen in the class
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end
  
  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end

# https://github.com/makersacademy/course/blob/master/intro_to_the_web/entering_players.md
