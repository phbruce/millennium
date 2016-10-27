# encoding: utf-8
module Millennium
  # lib/millennium/pedido_venda/pedido_venda.rb
  class PedidoVenda
    class << self
      OBJECT = 'Pedido_Venda'.freeze
      private_constant :OBJECT
      ENDPOINTS_NAMES = {
        lista_faturamentos: 'ListaFaturamentos',
        consulta_status_wf: 'ConsultaStatusWF',
        lista_operadoras: 'ListaOperadoras',
        consulta_simples: 'ConsultaSimples',
        consulta_produto: 'ConsultaProduto',
        consulta_xml_nfe: 'ConsultaXmlNFe',
        lista_bandeiras: 'ListaBandeiras',
        consulta_status: 'ConsultaStatus',
        lista_tipo_pgto: 'ListaTipoPgto',
        consulta_itens: 'Consulta_Itens',
        lista_pedidos: 'ListaPedidos',
        consulta: 'Consulta',
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
