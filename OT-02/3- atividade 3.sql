select 	produto.descricao, produto.preco, categoria.descricao
from mercado.produto
join mercado.categoria
on produto.idcategoria = categoria.idcategoria