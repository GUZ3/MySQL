SELECT p.idproduto, p.descricao, SUM(v.quantidade) AS quantidade_vendida, p.preco
FROM produto p
JOIN venda_has_produto v
ON p.idproduto = v.idproduto
GROUP BY p.idproduto, p.descricao, p.preco;