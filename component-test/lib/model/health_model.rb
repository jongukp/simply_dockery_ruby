class HealthEntity
  def self.base_health(opts)
    payload = {
      response: 'pong'
    }
    payload = payload.merge(opts) unless opts.nil?
    payload
  end
end
