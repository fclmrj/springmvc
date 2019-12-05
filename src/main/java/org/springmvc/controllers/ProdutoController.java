package org.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmvc.model.Produto;

@Controller
public class ProdutoController {

	@RequestMapping("/produto/form")
	public String form(Produto produto) {
		
		System.out.println(produto);
		
		return "/produto/form";
	}
	
	@RequestMapping("/produto/save")
	public String save(Produto produto){
		
		System.out.println(produto);
		
		return "produto/saveSuccess";
	}
}