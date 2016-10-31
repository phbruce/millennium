# encoding: utf-8
module Millennium
  # lib/millennium/request.rb
  class Request
    HOSTNAME = Millennium::Config.host || 'millennium.iwise.com.br'
    PORT = Millennium::Config.port     || '888'

    OPTIONS = {
      userpwd: "#{Millennium::Config.user}:#{Millennium::Config.pass}",
      httpauth: :ntlm,
      verbose: true
    }.freeze

    private_constant :HOSTNAME
    private_constant :PORT
    private_constant :OPTIONS

    def initialize(object, endpoint, params)
      @full_endpoint = Millennium::Helpers.full_endpoint(
        object, endpoint, params
      )
    end

    def run
      Typhoeus::Request.new(url, OPTIONS).run
    end

    private

    def url
      "http://#{HOSTNAME}:#{PORT}/api/millenium_eco/#{@full_endpoint}"
    end
  end
end
