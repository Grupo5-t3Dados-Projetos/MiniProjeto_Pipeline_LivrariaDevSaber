-- No BigQuery, chaves primárias não são impostas, mas ID_Cliente serve como identificador lógico.
-- seu-projeto. e seu_dataset. são encontrados em ID do conjunto de dados
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Clientes` (
    ID_Cliente INT64,
    Nome_Cliente STRING,
    Email_Cliente STRING,
    Estado_Cliente STRING
);

CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Produtos` (
    ID_Produto INT64,
    Nome_Produto STRING,
    Categoria_Produto STRING,
    Preco_Produto NUMERIC
);

-- Tabela de Vendas relaciona clientes e produtos, registrando cada transação.
-- As relações com Clientes e Produtos são lógicas, mantidas pelos campos de ID.
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Vendas` (
    ID_Venda INT64,
    ID_Cliente INT64,
    ID_Produto INT64,
    Data_Venda DATE,
    Quantidade INT64
);