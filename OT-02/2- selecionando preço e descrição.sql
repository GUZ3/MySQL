select produto.preco, categoria.descricao /*seleciona coluna preco de produto e descricao de categoria*/
from mercado.produto produto /*cria um aliasses*/
join mercado.categoria categoria  /*relaciona o id categoria de produto pro idcategoria  de categoria*/
on produto.idcategoria = categoria.idcategoria 
where categoria.descricao = 'Limpeza'; /* filtra apenas os que tiver descrição limpeza*/