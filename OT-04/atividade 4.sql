SELECT produto.*
FROM produto
JOIN categoria
ON produto.idcategoria = categoria.idcategoria
WHERE categoria.descricao = 'Higiene pessoal'
OR categoria.descricao = 'Limpeza';