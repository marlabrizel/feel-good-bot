require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
  register Sinatra::Partial
  set :partial_template_language, :erb #first param is thing youre setting, second param is what you set it to
  get '/' do
    @adjective = ["nice", "alright", "decent"].shuffle.first
    erb :index
  end

  run! if app_file == $0
end
