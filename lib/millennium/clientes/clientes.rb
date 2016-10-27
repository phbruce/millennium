# encoding: utf-8
module Millennium
  # lib/millennium/clientes/clientes.rb
  class Clientes
    class << self
      OBJECT = 'Clientes'.freeze
      private_constant :OBJECT
      ENDPOINTS_NAMES = {
        consulta_por_documento: 'ConsultaPorDocumento',
        incluir_ou_alterar: 'IncluirOuAlterar',
        consulta_endereco: 'ConsultaEndereco',
        consulta_credito: 'ConsultaCredito',
        reserva_credito: 'ReservaCredito',
        lista: 'Lista'
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
