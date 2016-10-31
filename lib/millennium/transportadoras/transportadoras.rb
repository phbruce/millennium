# encoding: utf-8
module Millennium
  # lib/millennium/transportadoras/transportadoras.rb
  class PedidoVenda
    def initialize(endpoint, params)
      @object   = 'Transportadoras'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
