SELECT produto.*,categoria.descricao AS categoria
FROM produto
JOIN categoria
ON produto.idcategoria = categoria.idcategoria
WHERE categoria.descricao = 'Higiene pessoal'
AND produto.descricao LIKE '%dental';