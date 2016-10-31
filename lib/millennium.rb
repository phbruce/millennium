# encoding: utf-8

require 'typhoeus'
require 'json'

require 'millennium/config'
require 'millennium/errors'
require 'millennium/request'
require 'millennium/version'

# lib/millennium
module Millennium
  def self.configure
    yield Config
  end
end
