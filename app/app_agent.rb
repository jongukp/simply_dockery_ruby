require 'sinatra/base'
require 'json'
require 'webrick'
require 'pathname'
require 'require_all'

# require_rel 'lib'

class AppAgent < Sinatra::Base
  set :logging, true

  before do
    request.body.rewind
  end

  get '/status' do
    content_type :json
    { response: 'OK' }.to_json
  end

  post '/init' do
    # write schema
    # user tables object
    # search schema from object
  end

  get '/users' do
    # TODO: use mysql to retrieve data
    content_type :json
    { name: 'wookie' }.to_json
  end

  get '/users/:name' do
    # TODO: use sql to retrieve data
  end

  post '/users/:name' do
    # TODO: use sql to add data
  end

  put 'users/:name' do
    # TODO: use sql to update data
  end

  delete '/users/:name' do
    # TODO: use sql to delete data
  end
end

webrick_options = {
  Host: '0.0.0.0',
  port: 8080
}

Rack::Handler::WEBrick.run AppAgent, webrick_options
