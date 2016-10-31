# encoding: utf-8
module Millennium
  # lib/millennium/clientes/clientes.rb
  class Clientes
    def initialize(endpoint, params)
      @object   = 'Clientes'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
