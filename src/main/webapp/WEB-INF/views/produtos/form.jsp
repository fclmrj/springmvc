<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Features - Produto form</title>
</head>
<body>

	<form action="form/save" method="post">
	    <div>
	        <label>Nome</label>
	        <input type="text" name="nome" />
	    </div>
	    <div>
	        <label>Categoria</label>
	        <input type="text" name="categoria" />
	    </div>	    
		<div>
        	<label>Descrição</label>
        	<textarea rows="10" cols="20" name="descricao"></textarea>
    	</div>
    	
    	<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
        	<div>
            	<label>${tipoPreco}</label>
            	<input type="text" name="precos[${status.index}].valor" />
            	<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}" />
        	</div>
    	</c:forEach>
	    
	    <button type="submit">Cadastrar</button>
	</form>

</body>
</html>