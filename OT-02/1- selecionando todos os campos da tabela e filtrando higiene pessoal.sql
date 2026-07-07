SELECT produto.*   /*seleciona todos os campos da tabela produto*/
FROM mercado.produto produto   /*adiciona um aliasses, mercado.produto == produto*/
JOIN mercado.categoria categoria  /*relaciona a coluna categoria da tabela produto com a coluna idcategoria da tabela categoria*/
ON produto.idcategoria = categoria.idcategoria
WHERE categoria.descricao = 'Higiene Pessoal'; /* filtra apenas as categorias que tiverem a descrição tals