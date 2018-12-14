require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/details' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
