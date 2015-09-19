require 'sinatra/base'

class App < ::Sinatra::Base
  set :public_folder, './'

  get '/app/' do
    send_file 'index.html'
  end
end

run App
