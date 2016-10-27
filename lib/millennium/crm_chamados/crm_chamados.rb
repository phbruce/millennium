# encoding: utf-8
module Millennium
  # lib/millennium/crm_chamados/crm_chamados.rb
  class CRMChamados
    class << self
      OBJECT = 'Crm.Chamados'.freeze
      private_constant :OBJECT
      ENDPOINTS_NAMES = {
        inclui_relacionamento: 'IncluiRelacionamento',
        lista_origens_chamado: 'ListaOrigensChamado',
        lista_tipos_chamado: 'ListaTiposChamado',
        inclui_comentario: 'IncluiComentario',
        lista_sub_motivos: 'ListaSubMotivos',
        lista_motivos: 'ListaMotivos',
        inclui: 'Inclui',
        fecha: 'Fecha'
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
