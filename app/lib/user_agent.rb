require 'sinatra/base'
require 'json'

module Sinatra
  module UserAgent
    def self.registered(app)
      app.get '/users' do
        # TODO: use mysql to retrieve data
        content_type :json
        [{ name: 'wookie' },
         { name: 'cookie' }].to_json
      end

      app.get '/users/:name' do
        # TODO: use sql to retrieve data
        content_type :json
        { name: params[:name] }.to_json
      end

      app.post '/users/:name' do
        # TODO: use sql to add data
      end

      app.put 'users/:name' do
        # TODO: use sql to update data
      end

      app.delete '/users/:name' do
        # TODO: use sql to delete data
      end
    end
  end

  register UserAgent
end
