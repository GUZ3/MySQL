SELECT vendas.idvenda, vendas.data_venda, SUM(venda_has_produto.quantidade) AS Quantidade_Vendida
FROM vendas
JOIN venda_has_produto
ON vendas.idvenda = venda_has_produto.idvenda
GROUP BY vendas.idvenda, vendas.data_venda
ORDER BY Quantidade_Vendida ASC
LIMIT 1;