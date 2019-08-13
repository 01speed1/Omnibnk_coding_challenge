#require 'faraday'
#require 'json'

class Connection

  def self.api
    Faraday.new(url: ENV["API_URL"]) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['X-RapidAPI-Host'] = ENV["API_RAPID_HOST"]
      faraday.headers['X-RapidAPI-Key'] = ENV["API_KEY"]
    end
  end
end