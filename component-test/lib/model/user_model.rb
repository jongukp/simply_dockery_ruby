class UserEntity
  def self.base_user(opts)
    payload = {
      name: 'wookie'
    }
    payload = payload.merge(opts) unless opts.nil?
    payload
  end
end
