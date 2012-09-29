require 'net/http'

module Crunchbase
  API_KEY='t9k3ymmpyx4ktbzekrx8qrb3'

  class User
    def initialize(client)
      @client = client
    end

    def companies
      companies_json
    end

    def company name
      company_json name
    end

    def search query
      search_json query
    end

    private

    def companies_json
      @companies_json ||= @client.json("/companies")
    end

    def company_json name
      @company_json ||= @client.json("/company/#{name}")
    end

    def search_json query
      @client.params = { :query => query }
      @search_json ||= @client.json("/search")

    end
  end

  class Unauthorized < StandardError; end

  class Client
    attr_accessor :params

    def initialize(access_token)
      @access_token = access_token
    end

    def json(url)
      JSON.parse(request(url).body)
    end

    def request(url)
      @relative_url = url
      response = client.request_get(full_url.request_uri)
      if response.code != "200"
        raise Unauthorized
      end
      response
    end

    private

    def full_url
      extra = params.try(:map) { |key,value| key + "=" + value }.try(:join, "&")
      extra = "&#{extra}" unless extra.nil?
      URI.parse "http://api.crunchbase.com/v/1#{@relative_url}.js?api_key=#{access_token}#{extra}"
    end

    def client
      @client ||= Net::HTTP.new(full_url.host, full_url.port)
    end

    def access_token
      URI.encode @access_token
    end
  end
end
