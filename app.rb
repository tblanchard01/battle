require 'sinatra/base'
class Battle < Sinatra::Base 
    enable :sessions
    get '/' do 
        erb :index
    end 

    post '/names' do
     session[:player_1_name] = params[:player_1_name]
     session[:player_2_name] = params[:player_2_name]
     redirect '/play'
      end
      get '/play' do
        @player_1_name = session[:player_1_name]
        @player_2_name = session[:player_2_name]
        erb :play
      end


    run! if app_file == $0
end 

# https://github.com/makersacademy/course/blob/master/intro_to_the_web/entering_players.md