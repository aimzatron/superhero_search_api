require 'faraday'
require 'faraday_middleware'
require 'json'

class Request
  class << self

    BASE_PATH = "https://superheroapi.com/api/#{ENV['SUPERHERO_TOKEN']}/search"

    def get(name, options = {})
      response = get_json(name)
      response["response"] != "error" ? response : errors(response)
    end

    def errors(response)
      error = { errors: { status: response["response"], message: response["error"] } }
      response.merge(error)
    end

    def get_json(name)
      path = name.empty? ? BASE_PATH : "#{BASE_PATH}/#{name}"
      response = api.get(path)
      JSON.parse(response.body)
    end

    def api
      Faraday.new(url: BASE_PATH) do |faraday|
        faraday.response :logger
        faraday.adapter Faraday.default_adapter
        faraday.headers['Content-Type'] = 'application/json'
        faraday.headers['Content-Encoding'] = 'gzip'
        faraday.use FaradayMiddleware::FollowRedirects
        faraday.adapter :net_http
      end
    end
  end
end
