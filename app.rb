require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/names'
  end

  get '/names' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    p @player_1_name
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
