package org.springmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmvc.dao.ProdutoDAO;
import org.springmvc.model.Produto;

@Controller
public class ProdutoController {
	
	@Autowired	
	ProdutoDAO produtoDAO;

	@RequestMapping("/produto/form")
	public String form(Produto produto) {
		
		System.out.println(produto);
		
		return "/produto/form";
	}
	
	@RequestMapping("/produto/form/save")
	public String save(Produto produto){
		
		System.out.println(produto);
		
		produtoDAO.gravar(produto);
		
		return "/produto/saveSuccess";
	}
}