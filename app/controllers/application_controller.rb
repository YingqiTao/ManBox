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
  
  post '/result' do
    answers = []
    answers << params.values 
    display = []
    answers.each do |integer|
      item = get_item(integer)
      display << item
    erb :result
  end 
end
end
