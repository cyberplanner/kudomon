require 'sinatra/base'
# Dir["./lib/*.rb"].each {|file| require file }
require_relative './lib/kudomon'
require_relative './lib/trainer'
require_relative './lib/types/electric_type'


class KudomonBattle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @player = Trainer.new(@player_name)
    @kudomons = []
    @types = ["ElectricType", "FireType", "GrassType",
              "PsychicType", "RockType", "WaterType"]
    rand(25..50).times do
      @kudomons << ElectricType.new
    end
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
