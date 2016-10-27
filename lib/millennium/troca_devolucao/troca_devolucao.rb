# encoding: utf-8
module Millennium
  # lib/millennium/troca_devolucao/troca_devolucao.rb
  class TrocaDevolucao
    class << self
      OBJECT = 'TrocaDevolucao'.freeze
      private_constant :OBJECT
      ENDPOINTS_NAMES = {
        lista_para_troca_devolucao: 'ListaParaTrocaDevolucao',
        consulta_credito: 'ConsultaCredito',
        reserva_credito: 'ReservaCredito',
        inclui: 'Inclui',
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
