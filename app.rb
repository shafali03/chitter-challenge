require 'sinatra/base'
require './lib/peep.rb'


class ChitterPeeps < Sinatra::Base

  get '/peeps' do
    @peeps = [
      "first peeps message",
      "second peeps message"
    ]
  erb :'peeps/index'
  end

  run! if app_file == $0
end
