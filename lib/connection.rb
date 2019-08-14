#require 'faraday'
#require 'json'

class Connection

  def self.api
    Faraday.new(url: ENV["TMDB_ENDPOINT"]) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
    end
  end
end