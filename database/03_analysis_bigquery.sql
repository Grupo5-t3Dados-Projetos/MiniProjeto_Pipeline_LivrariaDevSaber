-- Pergunta 1: Quais os nomes dos clientes que moram no estado de 'SP'?
SELECT Nome_Cliente
FROM `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Clientes`
WHERE Estado_Cliente = 'SP';

-- Pergunta 2: Quais produtos pertencem à categoria 'Ficção Científica'?
SELECT Nome_Produto
FROM `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Produtos`
WHERE Categoria_Produto = 'Ficção Científica';

-- Pergunta 3: Listar todas as vendas, mostrando o nome do cliente, o nome do produto e a data da venda. Ordene pela data.
SELECT
    C.Nome_Cliente,
    P.Nome_Produto,
    V.Data_Venda
FROM `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Vendas` AS V
JOIN `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Clientes` AS C 
  ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Produtos` AS P 
  ON V.ID_Produto = P.ID_Produto
ORDER BY V.Data_Venda;

-- Pergunta 4: Qual o valor total de cada venda? (quantidade * preço)
SELECT
    V.ID_Venda,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Vendas` AS V
JOIN `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Produtos` AS P 
  ON V.ID_Produto = P.ID_Produto;


-- Pergunta 5: Qual o produto mais vendido em termos de quantidade?
SELECT
    P.Nome_Produto,
    SUM(V.Quantidade) AS Total_Quantidade_Vendida
FROM `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Vendas` AS V
JOIN `t1engenhariadados.Turma3_Grupo5_MiniProjeto_LivrariaDevSaber.Produtos` AS P 
  ON V.ID_Produto = P.ID_Produto
GROUP BY P.Nome_Produto
ORDER BY Total_Quantidade_Vendida DESC
LIMIT 1;
-- O GROUP BY faz a query calcular a soma por produto (em vez de uma soma geral). É ele que permite que o SUM()/Total_Quantidade_Vendida dê um valor separado para cada Nome_Produto.