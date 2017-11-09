require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params

    @name1 =  params[:name1]
    @name2 =  params[:name2]
    erb(:index2)
  end


  run! if app_file == $0
end
