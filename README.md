# Olá, pessoal!
Nossa missão é deixar de ser apenas estudantes de SQL para nos tornarmos analistas de dados em uma missão real. O cliente é a Livraria DevSaber, uma nova loja online que fez suas primeiras vendas e, até agora, anotou tudo em uma planilha. Isso é um começo, mas para crescer, eles precisam de insights.
Nosso desafio é transformar essa planilha em um mini data warehouse inteligente no Google BigQuery. Vamos construir todo o pipeline de dados: desde criar a estrutura, carregar os dados até extrair as respostas que ajudarão a livraria a entender seus negócios.
No final, todas as perguntas deverão ser documentadas e respondidas neste README.md.

# Por que uma planilha não é ideal para uma empresa que quer analisar vendas a fundo?
Uma planilha é ótima para começar, mas tem sérias limitações para uma empresa que deseja crescer:

# Limite de Dados:
E se a livraria fizer 1 milhão de vendas? A maioria das planilhas não consegue lidar com esse volume. Elas ficam lentas, travam ou nem abrem. Já um banco de dados como o BigQuery foi feito para processar volumes massivos de informação.

# Integridade e Padronização:
Em uma planilha, é muito fácil cometer erros de digitação. Um dia você escreve "e-book", no outro "ebook". Isso gera inconsistência. Um banco de dados impõe regras e padronização, garantindo dados confiáveis.

# Dificuldade em Análises Complexas:
Cruzar informações de vendas, clientes e estoque em uma planilha é extremamente complicado. Já no SQL, comandos simples como JOIN resolvem esse problema rapidamente.

# Automação e Escalabilidade:
Planilhas dependem de atualização manual. Em um pipeline de dados, coleta, carga e transformação podem ser automatizadas, permitindo que a empresa cresça sem perder qualidade de análise.

# Que perguntas o dono da Livraria DevSaber gostaria de responder?
Com os dados de vendas organizados em um data warehouse, o dono pode ir além do simples "quanto vendemos" e explorar questões estratégicas:
Qual é o valor médio por pedido?
Em quais cidades ou estados estão os melhores clientes?
Quem são os clientes que mais compram ou gastam mais?
Quais são os livros mais vendidos e os que quase não vendem?
Houve aumento de vendas após uma campanha de marketing ou em datas especiais (ex.: Dia dos Namorados)?

Ao responder a essas perguntas com dados, o dono da livraria pode tomar decisões mais inteligentes, como criar promoções direcionadas, otimizar o estoque e entender o comportamento de seus clientes.

# Pipeline de Dados — Livraria DevSaber

Projeto em grupo desenvolvido no Bootcamp de Engenharia de Dados do Grupo Boticário. Objetivo: construir um pipeline de dados fim a fim — desde a criação da estrutura e carregamento dos dados até a criação de views e consultas analíticas que ajudem a livraria a entender seu negócio. Todas as consultas foram geradas e executadas no BigQuery (Standard SQL).

## Sumário
- Contexto e objetivos
- Contribuição
- Equipe

## Contexto e objetivos
O pipeline atende perguntas de negócio típicas de uma livraria, como:
- Evolução de vendas por período
- Ticket médio por cliente e por categoria
- Categorias mais vendidas
- Recorrência de clientes

Resultados são materializados em views e/ou materialized views no BigQuery, prontas para consumo analítico.

## Contribuição
- Fluxo com branches por feature e Pull Requests.
- Commits pequenos e descritivos.
- Revisão obrigatória por pelo menos uma pessoa do time.
- Documentar mudanças relevantes em `docs/` e atualizar o README quando necessário.

## Equipe
Projeto em grupo — Bootcamp de Engenharia de Dados do Grupo Boticário.
- Luana Silva - https://github.com/LuanaTechVet
- Sophia de Jong - https://github.com/sophtmotion
- [Nome 3]
- [Nome 4]


--- 

Este repositório foi pensado para começar enxuto e permitir evolução gradual (ex.: migrações automatizadas, materialized views, e camadas adicionais de qualidade) sem refatorações extensas.
