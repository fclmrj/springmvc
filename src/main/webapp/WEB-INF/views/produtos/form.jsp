<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Features - Produto form</title>
</head>
<body>

	<form:form action="/springmvc/produtos/form/save" method="POST" commandName="produto">
		<div>
			<label>Nome</label>
			<input type="text" name="nome" />
			<form:errors path="nome" />
		</div>
		<div>
			<label>Categoria</label>
			<input type="text" name="categoria" />
			<form:errors path="categoria" />
		</div>
		<div>
			<label>Descrição</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
			<form:errors path="descricao" />
		</div>

		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label>
				<input type="text" name="precos[${status.index}].valor" />
				<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}" />
			</div>
		</c:forEach>

		<button type="submit">Cadastrar</button>
	</form:form>
	
</body>
</html>