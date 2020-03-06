require 'sinatra/base'
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
    @p1 = $player_1
    @p2 = $player_2
    erb(:play)
end
 
get '/attack' do
  @p1 = $player_1
  @p2 = $player_2
  @p1.attack(@p2)
  erb(:attack)
end

# start the server if ruby file executed directly
run! if app_file == $0
end