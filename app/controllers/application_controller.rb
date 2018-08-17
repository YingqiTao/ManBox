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
   
    total = 0
    answers.each do |x|
      num = 0 
      while num < 4
        new_count = x[num].to_i 
        total += new_count
        num +=1 
      end
    end
    
    if total == 8
      return erb :result_lover_below
    elsif total == 9
      return erb :result_lover_above
    elsif total == 13
      return erb :result_friend_below
    elsif total == 14
      return erb :result_friend_above
    end
  end
end
