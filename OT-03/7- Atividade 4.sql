SELECT DISTINCT categoria.descricao -- seleciona so que sem repetições
FROM categoria
JOIN produto
ON categoria.idcategoria = produto.idcategoria
JOIN venda_has_produto
ON produto.idproduto = venda_has_produto.idproduto;