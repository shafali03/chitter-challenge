require 'sinatra/base'
require './lib/peep.rb'


class ChitterPeeps < Sinatra::Base

  get '/' do
    "Chitter Manager"
  end

  get '/peeps' do
    @peeps = Peep.all
  erb :'peeps/index'
  end

get '/peeps/new' do
  erb :'peeps/new'
end

post '/peeps' do
  Peep.create(message: params[:message])
  redirect '/peeps'
end

  run! if app_file == $0
end
