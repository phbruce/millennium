# encoding: utf-8
module Millennium
  # lib/millennium/config.rb
  module Config
    extend self

    attr_accessor :user
    attr_accessor :pass
    attr_accessor :host
    attr_accessor :port

    def self.options
      {
        userpwd: "#{user}:#{pass}",
        httpauth: :ntlm,
        verbose: true
      }
    end
  end
end
