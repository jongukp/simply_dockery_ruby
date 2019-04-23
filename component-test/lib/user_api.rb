require 'httparty'

class UserAPI
  include HTTParty

  # Initialize the class
  #
  # @param host [String] localhost
  # @param port [String] port
  # @param https [Boolean] https connection
  # @return [UserApi] new instance of user class
  def initialize(host = 'localhost', port = '8080', https = false)
    @host = host
    http_party = self.class
    http_party.base_uri https ? "https://#{host}:#{port}" : "http://#{host}:#{port}"
  end

  def status
    self.class.get('/status')
  end

  # List all the users stored by the service
  #
  # @return [HTTParty::Response] Result from the web server, containing JSON results of all users
  def list_users
    self.class.get('/users')
  end

  # Add a user to db(TBD)
  #
  # @param name [String] name of the user to store
  # @param value [String] JSON payload of user_id (TBD)
  # @return [HTTParty::Response] Result from the web server, containing JSON results of the added user
  def add_user(name, value)
    self.class.post("/users/#{name}",
                    body: value,
                    headers: {
                      'Content-Type' => 'application/json; charset=UTF-8',
                      Connection: 'keep-alive',
                      Accept: 'application/json, text/plain, */*'
                    })
  end

  # Retrieve a user
  #
  # @param name [String] name of the user
  # @return [HTTParty::Response] Result from the web server, containing JSON results of the user
  def get_user(name)
    self.class.get("/users/#{name}")
  end

  # Delete a user
  #
  # @param name [String] name of the user
  # @return [HTTPart::Response] Result from the web server
  def delete_user(name)
    self.class.delete("/users/#{name}")
  end
end
