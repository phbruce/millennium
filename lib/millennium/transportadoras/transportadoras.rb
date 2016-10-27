# encoding: utf-8
module Millennium
  # lib/millennium/transportadoras/transportadoras.rb
  class Transportadoras
    class << self
      OBJECT = 'Transportadoras'.freeze
      private_constant :OBJECT
      ENDPOINTS_NAMES = {
        atualiza_saldo_de_estoque: 'ConsultaPorDocumento',
        atualiza_preco_de_tabela: 'IncluirOuAlterar',
        atualiza_produtos_vitrine: 'CalculaFrete'
      }.freeze
      private_constant :ENDPOINTS_NAMES

      ENDPOINTS_NAMES.each do |method_name, endpoint|
        define_method method_name do |params = {}|
          url = "#{OBJECT}/#{endpoint}?$format=json"
          unless params.empty?
            query = Millennium::Helpers.mount_query(params)
            url = "#{OBJECT}/#{endpoint}?#{query}$format=json"
          end
          Millennium::Request.run(url)
        end
      end
    end
  end
end
