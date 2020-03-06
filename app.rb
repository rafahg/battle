require 'sinatra'
require './lib/player'



class Battle < Sinatra::Base
enable :sessions
get '/' do 
 erb(:index)
end

post '/name' do
  $player_1 = Player.new(params[:P1_name])
  $player_2 = Player.new(params[:P2_name])
    # @P1_name = params[:P1_name]
    # @P2_name = params[:P2_name]
    redirect '/play'
end

get '/play' do
    @P1_name = $player_1.name
    @P2_name = $player_2.name
    erb(:play)
end
 
get '/attack' do
  @P1_name = $player_1.name
  @P2_name = $player_2.name
  erb(:attack)
end

# start the server if ruby file executed directly
run! if app_file == $0
end