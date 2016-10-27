# encoding: utf-8
module Millennium
  # lib/millennium/request.rb
  class Request
    class << self
      def run(endpoint)
        url = mount_url(endpoint)
        make_request(url)
      end

      private

      def make_request(url)
        Typhoeus::Request.new(url, options).run
      end

      def mount_url(endpoint)
        hostname = Millennium::Config.host || 'millennium.iwise.com.br'
        port = Millennium::Config.port     || '888'

        "http://#{hostname}:#{port}/api/millenium_eco/#{endpoint}"
      end

      def options
        {
          userpwd: userpwd,
          httpauth: :ntlm,
          verbose: true
        }
      end

      def userpwd
        config = Millennium::Config
        "#{config.user}:#{config.pass}"
      end
    end
  end
end
