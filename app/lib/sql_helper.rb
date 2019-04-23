require 'active_record'

class SqlHelper
  def initialize
    @connection = ActiveRecord::Base.establish_connection(adapter: 'mysql',
                                                          host: 'test-mysql',
                                                          username: 'root',
                                                          password: 'mypassword',
                                                          databse: 'users')
  end
end
