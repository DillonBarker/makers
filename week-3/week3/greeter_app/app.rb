require 'sinatra/base'
require './lib/birthday.rb'

class Greeter < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
   session[:player_1_name] = params[:player_1_name]
   session[:day] = params[:day]
   session[:month] = params[:month]
   redirect '/birthday'
  end

  get '/birthday' do
    @name = session[:player_1_name]
    @day = session[:day]
    @month = session[:month]
    @string = Birthday.new.birthday(@day, @month)
    erb :birthday
  end

  run! if app_file == $0
end
