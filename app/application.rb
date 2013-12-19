require "#{APP_ROOT}/app/helpers.rb"

class App < Sinatra::Base
  
  helpers AppHelper
  
  set :root, APP_ROOT
  set :public_folder, 'public'
  set :views, APP_ROOT + '/app/views'
  
  get '/' do
    erb :index
  end
  
  not_found do
    erb :'errors/fourohfour'
  end
  
  error do
    erb :'errors/generic'
  end
  
end