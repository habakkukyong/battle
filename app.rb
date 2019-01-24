require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    $game = Game.new((params[:player_1_name]), (params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    @player_1 = $game.p1
    @player_2 = $game.p2
    erb(:play)
  end

  get '/attack' do
    # @player_2_name = session[:player_2_name]
    @player_1 = $game.p1
    @player_2 = $game.p2
    $game.attack(@player_2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
