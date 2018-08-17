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
  
  sum = 0 
  answers = []
  answers << params.values
  answers.each do |integer|
    sum += integer
  end
  return sum
  
  if sum == 9
  get '/result1' do
    # sum = 0 
    # answers = []
    # answers << params.values 
    # display = []
    # answers.each do |integer|
    #   sum += integer
    #    display << item
    erb :result1
  end
end
