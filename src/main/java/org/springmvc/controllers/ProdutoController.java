package org.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springmvc.dao.ProdutoDAO;
import org.springmvc.model.Produto;
import org.springmvc.model.TipoPreco;

@Controller
public class ProdutoController {
	
	@Autowired	
	ProdutoDAO produtoDAO;

	@RequestMapping(value="/produtos/list", method=RequestMethod.GET)
	public ModelAndView listar(){
		
		List<Produto> produtos = produtoDAO.listar();
		ModelAndView modelAndView = new ModelAndView("/produtos/list");
		modelAndView.addObject("produtos", produtos);
		return modelAndView;
	}	
	
	@RequestMapping(value="/produtos/form",method=RequestMethod.GET)
    public ModelAndView form(){

        ModelAndView modelAndView = new ModelAndView("produtos/form");
        modelAndView.addObject("tipos", TipoPreco.values());
        return modelAndView;
    }
	
	@RequestMapping(value="/produtos/form/save", method=RequestMethod.POST)
	public String save(Produto produto){
		
		System.out.println(produto);		
		produtoDAO.gravar(produto);		
		return "/produtos/saveSuccess";
	}
}