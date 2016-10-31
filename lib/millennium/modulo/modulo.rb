# encoding: utf-8
module Millennium
  # lib/millennium/modulo/modulo.rb
  class Modulo
    def initialize(endpoint, params)
      @object   = 'Module'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
