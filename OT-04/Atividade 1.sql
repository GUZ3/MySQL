SELECT SUM(venda_has_produto.quantidade) AS total_venda_escovas
FROM venda_has_produto
JOIN produto
ON venda_has_produto.idproduto = produto.idproduto
WHERE produto.descricao = 'Escova dental';