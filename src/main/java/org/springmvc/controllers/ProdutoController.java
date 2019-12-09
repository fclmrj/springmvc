package org.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springmvc.dao.ProdutoDAO;
import org.springmvc.model.Produto;
import org.springmvc.model.TipoPreco;

@Controller
@RequestMapping("produtos")
public class ProdutoController {
	
	@Autowired	
	ProdutoDAO produtoDAO;

	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView listar(){
		
		List<Produto> produtos = produtoDAO.listar();
		ModelAndView modelAndView = new ModelAndView("/produtos/list");
		modelAndView.addObject("produtos", produtos);
		return modelAndView;
	}	
	
	@RequestMapping(value="/form",method=RequestMethod.GET)
    public ModelAndView form(){

        ModelAndView modelAndView = new ModelAndView("/produtos/form");
        modelAndView.addObject("tipos", TipoPreco.values());
        return modelAndView;
    }
	
	@RequestMapping(value="/form/save", method=RequestMethod.POST)
	public ModelAndView save(Produto produto, RedirectAttributes redirectAttributes){
		
		System.out.println(produto);		
		produtoDAO.gravar(produto);		
		
		redirectAttributes.addFlashAttribute("sucesso", "Produto cadastrado com sucesso!");

		return new ModelAndView("redirect:/produtos/list");
	}
	
	@RequestMapping("/saveSuccess")
	public String saveSuccess(){
		return "produtos/saveSuccess";
	}
}