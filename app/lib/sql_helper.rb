require 'mysql2'

class SqlHelper
  def initialize
    @connection = Mysql2::Client.new(host: 'test-mysql',
                                     username: 'root',
                                     password: 'mypassword')
  end

  def create_user_table
    @connection.query("CREATE TABLE Users (UserName varchar(255);")
  end
end
