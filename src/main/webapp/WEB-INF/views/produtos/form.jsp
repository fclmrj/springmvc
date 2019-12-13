<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Features - Produto form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<style>
		.jumbotron {
			width: 700px;
			margin-left: auto;
			margin-right: auto;
			margin-top: 40px;
			text-align: left;
		}
			
		.table {
			width: 400px;
			margin-left: auto;
			margin-right: auto;
		}
	</style>
</head>
<body>

	<div class="jumbotron" style='margin-top: 30px; padding-top: 5px; padding-bottom: 15px; padding-bottom: 1px'>
	
		<form:form action="/springmvc/produtos/form/save" method="POST" commandName="produto">
			<div>
				<label>Nome</label>
				<form:errors path="nome" style="float: right;color: coral;"/>
				<input type="text" name="nome" class="form-control"/>
			</div>
			<div>
				<label>Categoria</label>
				<form:errors path="categoria" style="float: right;color: coral;" />
				<input type="text" name="categoria" class="form-control"/>
			</div>
			<div>
				<label>Descrição</label>
				<form:errors path="descricao" style="float: right;color: coral;"/>
				<textarea rows="10" cols="20" name="descricao" class="form-control"></textarea>
			</div>
	
			<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
				<div>
					<label>${tipoPreco}</label>
					<input type="text" name="precos[${status.index}].valor" class="form-control"/>
					<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}" />
				</div>
			</c:forEach>
	
			<br/>
			
			<button type="submit" class="btn btn-lg btn-primary" style="margin: 0 auto;display: block;margin-bottom: 15px;">Cadastrar</button>
			
		</form:form>
	</div>
	
</body>
</html>