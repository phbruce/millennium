# encoding: utf-8
module Millennium
  # lib/millennium/produtos/produtos.rb
  class Produtos
    class << self
      OBJECT = 'Produtos'.freeze
      private_constant :OBJECT
      ENDPOINTS_NAMES = {
        atualiza_produtos_vitrine: 'AtualizaProdutosVitrine',
        atualiza_saldo_de_estoque: 'AtualizaSaldoDeEstoque',
        atualiza_preco_de_tabela: 'AtualizaPrecoDeTabela',
        lista_relacionados: 'ListaRelacionados',
        saldo_de_estoque: 'SaldoDeEstoque',
        preco_de_tabela: 'PrecoDeTabela',
        lista_id_fotos: 'ListaIdFotos',
        lista_vitrine: 'ListaVitrine',
        busca_foto: 'BuscaFoto'
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
