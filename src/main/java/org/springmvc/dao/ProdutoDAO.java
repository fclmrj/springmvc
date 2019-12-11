package org.springmvc.dao;

import java.util.List;

import org.springmvc.model.Produto;

public interface ProdutoDAO {

	public void gravar(Produto produto);
	
	public List<Produto> listar();
}