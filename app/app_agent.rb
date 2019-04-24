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
    @sql = SqlHelper.new
    @sql.create_user_table
    # TODO: connect to the db
    # TODO: write schema
    # TODO: user tables object
    # TODO: search schema from object
    # TODO: refactor to different class
  end
end

webrick_options = {
  Host: '0.0.0.0',
  port: 8080
}

Rack::Handler::WEBrick.run AppAgent, webrick_options
