require 'sinatra/base'
Dir["./lib/*.rb"].each {|file| require file }
# require_relative './lib/kudomon'
# require_relative './lib/trainer'


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

    rand(1..50).times do
      location = [rand(1..50), rand(1..50)]
      type = ["Electric", "Fire", "Grass",
                "Psychic", "Rock", "Water"].sample
      @kudomons << Kudomon.new(location, type)
    end

    @nearby_kudomons = @player.nearby_kudomons(@kudomons)

    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
