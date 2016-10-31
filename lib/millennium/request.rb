# encoding: utf-8
module Millennium
  # lib/millennium/request.rb
  class Request
    def initialize(object, endpoint, params)
      @object = object
      @endpoint = endpoint
      @params = params
    end

    def run
      options = Millennium::Config.options
      format = {}
      format['$format'] = 'json'
      params = @params.merge(format)
      Typhoeus::Request.new(url, options.merge(params: params)).run
    end

    private

    def url
      hostname = Millennium::Config.host
      port = Millennium::Config.port
      "http://#{hostname}:#{port}/api/millenium_eco/#{@object}/#{@endpoint}"
    end
  end
end
