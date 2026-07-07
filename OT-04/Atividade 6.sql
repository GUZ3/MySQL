SELECT produto.*
FROM produto
JOIN categoria
ON produto.idcategoria = categoria.idcategoria
WHERE categoria.descricao NOT IN ('Cama, mesa e banho','Limpeza');