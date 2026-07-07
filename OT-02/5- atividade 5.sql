select	categoria.idcategoria,
		categoria.descricao,
        produto.descricao
from mercado.categoria categoria
left join mercado.produto produto 
on categoria.idcategoria = produto.idcategoria
		
		