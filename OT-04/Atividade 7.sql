SELECT descricao,preco
FROM produto
WHERE preco = (
	SELECT MAX(preco)
	FROM produto
);