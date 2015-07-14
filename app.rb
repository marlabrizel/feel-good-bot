require './robot'
require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
  register Sinatra::Partial
  set :partial_template_engine, :erb #first param is thing youre setting, second param is what you set it to
  get '/' do
    @adjective = ["nice", "alright", "decent"].shuffle.first
    erb :index
  end

  get '/robots' do
    @robots = []
    @robots << Robot.new("Josh", "Potatoes")
    @robots << Robot.new("R2D2", "Oil")
    @robots << Robot.new("Bender", "Beer")
    @robots << Robot.new("C-3PO", "Pollo")
    @robots << Robot.new("Batman", "Justice")
    erb :robots
  end

  run! if app_file == $0
end
