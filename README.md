# Millennium Ruby

Esta gem (não oficial) é uma interface para de facilitar a integração com ERP Millennium ECO API 2.0.

## Documentação

Você encontra a documentação da Millennium está nesse [link](http://millennium.iwise.com.br:888/api/millenium_eco/$help). Os dados de acesso são:

```
Login: OData
Senha: 0d@t@123
```

## Como usar

> Essa gem foi 100% baseada nos dados disponibilizados pela documentação da Millennium. As únicas coisas que foram alteradas da documentação original foram os padrões de nomenclatura das classes e métodos para o modelo mais adequado para Ruby, porém, foi mantido todos os nomes de classes e métodos em português assim como os dados contidos na documentação da Millennium.

Instale a gem:

```bash
gem install millennium
```

Agora insira as configurações básicas para você poder utilizar os recursos da API (utilizaremos os dados de exemplo da própria Millennium):

```ruby
require 'millennium'

Millennium.configure do |config|
  config.user = 'OData'
  config.pass = '0d@t@123'
  config.host = 'millennium.iwise.com.br'
  config.port = 888
end
```

### Buscando uma compra faturada

**Parâmetros**

| Parâmetro                | Obrigatório | Tipo                               | Descrição                          |
| ------------------------ | :---------: | :--------------------------------: | ---------------------------------- |
| data_atualizacao         | Não         | String (formato: YYYY-mm-dd-H-M-S) | Data de atualização                |
| vitrine                  | Não         | Integer                            | Id da vitrine                      |
| saida_inicial            | Não         | Integer                            | Id da saida ou entrada que será usado como ponto de partida |
| trans_id                 | Não         | Integer                            | Trans_id para a listagem das notas fiscais, as notas fiscais serão listadas a partir desse trans_id. Trans_id é um campo numérico que indica quando um item foi alterado |
| aprovado                 | Não         | Boolean                            | Listar somente notas aprovadas     |
| cancelada                | Não         | Boolean                            | Listar somente as notas canceladas |
| data_atualizacao_inicial | Não         | String (formato: YYYY-mm-dd-H-M-S) | Data inicial do período desejado   |
| data_atualizacao_final   | Não         | String (formato: YYYY-mm-dd-H-M-S) | Data final do período desejado   |

```ruby
Millennium::PedidoVenda.lista_faturamentos({
  data_atualizacao_inicial: '2016-01-01-00-00-00',
  data_atualizacao_final: '2016-10-26-23-59-59',
})
```
