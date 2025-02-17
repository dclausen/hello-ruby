require 'sinatra/base'

class App < Sinatra::Base
  set :bind, '0.0.0.0'
  set :port, 8080
  set :host_authorization, { permitted_hosts: [] }

  get '/' do
    'Hello World again and again!'
  end
  
  run! if app_file == $0
end
