# Millennium Ruby

Essa gem foi criada para de facilitar a integração com ERP Millennium ECO
API 2.0.

## Como usar

Instale a gem:

```bash
gem install millennium
```

Insira as configurações básicas para você poder utilizar os recursos
da API.

> É necessário ter as informações de acesso previamente para
> poder acessar a API.

```ruby
require 'millennium'

Millennium.configure do |config|
  config.user = <%= ENV['MILLENNIUM_USER'] %>
  config.pass = <%= ENV['MILLENNIUM_PASS'] %>
  config.host = <%= ENV['MILLENNIUM_HOST'] %>
  config.port = <%= ENV['MILLENNIUM_PORT'] %>
end
```

### Exemplo: Como obter informações de compras faturadas

**Parâmetros**

| Parâmetro                | Obrigatório | Tipo                               | Default | Descrição                        |
| ------------------------ | :---------: | :--------------------------------: | :-----: | -------------------------------- |
| data_atualizacao         | Não         | String (formato: YYYY-mm-dd-H-M-S) | -       | Data inicial do período desejado |
| vitrine                  | Não         | Integer                            | -       | Data final do período desejado   |
| saida_inicial            | Não         | Integer                            | -       | Data final do período desejado   |
| trans_id                 | Não         | Integer                            | -       | Data final do período desejado   |
| aprovado                 | Não         | Boolean                            | -       | Data final do período desejado   |
| cancelada                | Não         | Boolean                            | -       | Data final do período desejado   |
| data_atualizacao_inicial | Não         | String (formato: YYYY-mm-dd-H-M-S) | -       | Data final do período desejado   |
| data_atualizacao_final   | Não         | String (formato: YYYY-mm-dd-H-M-S) | -       | Data final do período desejado   |


```ruby
lista_faturamentos = Millennium::PedidoVenda.lista_faturamentos({
  data_atualizacao_inicial: '2016-10-26-17-24-50',
  data_atualizacao_final: '2016-10-26-17-24-50',
  data_atualizacao: '2016-10-26-17-24-50',
  saida_inicial: 55,
  cancelada: false,
  aprovado: false,
  trans_id: 66,
  vitrine: 82
})

lista_faturamentos.status
=> "OK"

lista_faturamentos.body
=> "{\"odata.metadata\":\"http:\\/\\/millennium.iwise.com.br:888\\/api\\/millenium_eco\\/$metadata#millenium_eco.MILLENIUM_ECO_PEDIDO_VENDA_LISTAFATURAMENTOS\"
,\"odata.count\":0,\"value\":[]}"
```
