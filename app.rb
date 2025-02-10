require 'sinatra/base'

class App < Sinatra::Base
  set :port, 8080
  set :host_authorization, { permitted_hosts: [] }

  get '/' do
    'Hello World'
  end
end
