# encoding: utf-8
module Millennium
  # lib/millennium/vitrine/vitrine.rb
  class Vitrine
    class << self
      OBJECT = 'Vitrine'.freeze
      private_constant :OBJECT
      ENDPOINTS_NAMES = {
        atualiza_status_produtos: 'Atualiza_Status_Produtos',
        atualiza_classificacoes: 'Atualiza_Classificacoes',
        lista_classificacoes: 'Lista_Classificacoes',
        atualiza_status: 'Atualiza_Status',
        atualiza_log: 'Atualiza_Log',
        lista_status: 'Lista_Status'
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
