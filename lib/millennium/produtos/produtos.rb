# encoding: utf-8
module Millennium
  # lib/millennium/produtos/produtos.rb
  class Produtos
    def initialize(endpoint, params)
      @object   = 'Produtos'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
