# encoding: utf-8
module Millennium
  # lib/millennium/troca_devolucao/troca_devolucao.rb
  class TrocaDevolucao
    def initialize(endpoint, params)
      @object   = 'TrocaDevolucao'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
