require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  get '/quiz' do
    erb :quiz
  end
  
  get '/contact' do
    erb :contact
  end
  
  get '/about' do
    erb :about
  end
  
  get '/result' do
    erb :result_lover_above
  end
end
