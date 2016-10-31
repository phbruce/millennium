# encoding: utf-8
module Millennium
  # lib/millennium/pedido_venda/pedido_venda.rb
  class PedidoVenda
    def initialize(endpoint, params)
      @object   = 'Pedido_Venda'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
