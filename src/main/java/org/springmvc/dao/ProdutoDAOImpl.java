package org.springmvc.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springmvc.model.Produto;

@Repository
@Transactional
public class ProdutoDAOImpl implements ProdutoDAO {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public void gravar(Produto produto) {
		entityManager.persist(produto);
	}
}