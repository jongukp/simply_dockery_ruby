require 'sinatra/base'
require 'json'
require 'webrick'
require 'pathname'
require 'require_all'

require_rel 'lib'

class AppAgent < Sinatra::Base
  set :logging, true

  register Sinatra::UserAgent

  before do
    request.body.rewind
  end

  get '/status' do
    content_type :json
    { response: 'OK' }.to_json
  end

  post '/init' do
    # TODO:
    # write schema
    # user tables object
    # search schema from object
    # refactor to different class
  end

end

webrick_options = {
  Host: '0.0.0.0',
  port: 8080
}

Rack::Handler::WEBrick.run AppAgent, webrick_options
