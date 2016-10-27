# encoding: utf-8

require 'typhoeus'
require 'json'

require 'millennium/config'
require 'millennium/clientes/clientes'
require 'millennium/crm_chamados/crm_chamados'
require 'millennium/crm/crm'
require 'millennium/errors'
require 'millennium/helpers'
require 'millennium/modulo/modulo'
require 'millennium/pedido_venda/pedido_venda'
require 'millennium/produtos/produtos'
require 'millennium/request'
require 'millennium/transportadoras/transportadoras'
require 'millennium/troca_devolucao/troca_devolucao'
require 'millennium/vitrine/vitrine'
require 'millennium/version'

# lib/millennium
module Millennium
  def self.configure
    yield Config
  end
end
