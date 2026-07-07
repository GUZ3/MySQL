SELECT SUM(venda_has_produto.quantidade) AS total_qtd_vendas
FROM vendas
JOIN venda_has_produto
ON vendas.idvenda = venda_has_produto.idvenda
WHERE vendas.data_venda 
BETWEEN '2021-07-08' AND '2021-07-10';