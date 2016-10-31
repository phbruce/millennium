# encoding: utf-8
module Millennium
  # lib/millennium/crm_chamados/crm_chamados.rb
  class CRMChamados
    def initialize(endpoint, params)
      @object   = 'Crm.Chamados'
      @endpoint = endpoint
      @params   = params
    end

    def run
      Millennium::Request.new(@object, @endpoint, @params).run
    end
  end
end
