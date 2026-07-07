SELECT SUM(venda_has_produto.quantidade * produto.preco) AS valor_total_venda
FROM venda_has_produto
JOIN produto
ON venda_has_produto.idproduto = produto.idproduto
WHERE venda_has_produto.idvenda = 2;