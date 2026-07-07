select	produto.*
from mercado.categoria categoria
join mercado.produto produto
on produto.idcategoria = categoria.idcategoria
where categoria.descricao != 'Frios'