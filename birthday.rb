require 'sinatra/base'
require './lib/birthday_calculator.rb'
require 'time'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/details' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    redirect "/message?month=#{@month}&day=#{@day}&name=#{@name}"
  end

  get '/message' do
    @name = params[:name]
    @day = params[:day].to_i
    @month = params[:month].to_i
    @days = BirthdayCalculator.new(2019, @month, @day).calculate_days
    erb :message
  end

  run! if app_file == $PROGRAM_NAME
end
