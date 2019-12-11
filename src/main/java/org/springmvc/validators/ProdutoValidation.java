package org.springmvc.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springmvc.model.Produto;

public class ProdutoValidation implements Validator{
 
	@Override
	public boolean supports(Class<?> clazz) {
		return Produto.class.isAssignableFrom(clazz);	
	}

	@Override
	public void validate(Object target, Errors errors) {

		ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "categoria", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "descricao", "field.required");
	}
}