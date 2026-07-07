SELECT DISTINCT categoria.descricao
FROM categoria
JOIN produto
ON categoria.idcategoria = produto.idcategoria
JOIN venda_has_produto