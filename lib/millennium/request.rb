# encoding: utf-8
module Millennium
  # lib/millennium/request.rb
  class Request
    HOSTNAME = Millennium::Config.host || 'millennium.iwise.com.br'
    PORT = Millennium::Config.port     || '888'

    private_constant :HOSTNAME
    private_constant :PORT

    def initialize(object, endpoint, params)
      @full_endpoint = Millennium::Helpers.full_endpoint(
        object, endpoint, params
      )
    end

    def run
      options = Millennium::Config.options
      Typhoeus::Request.new(url, options).run
    end

    private

    def url
      "http://#{HOSTNAME}:#{PORT}/api/millenium_eco/#{@full_endpoint}"
    end
  end
end
