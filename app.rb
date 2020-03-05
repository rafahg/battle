require 'sinatra'


class Battle < Sinatra::Base
enable :sessions
get '/' do 
 erb(:index)
end

post '/name' do
  session[:P1_name] = params[:P1_name]
  session[:P2_name] = params[:P2_name]
    # @P1_name = params[:P1_name]
    # @P2_name = params[:P2_name]
    redirect to('/name')
end

get '/name' do
    @P1_name = session[:P1_name]
    @P2_name = session[:P2_name]
    erb(:names)
end
 

# start the server if ruby file executed directly
run! if app_file == $0
end