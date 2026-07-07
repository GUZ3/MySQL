SELECT idproduto, SUM(quantidade) AS Total_de_Vendas
FROM venda_has_produto
GROUP BY idproduto
ORDER BY Total_de_Vendas DESC
LIMIT 1;