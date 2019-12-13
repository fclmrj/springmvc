<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Features - Produto list</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<style>
		.table {
			width: 800px;
			margin-left: auto;
			margin-right: auto;
		}
	</style>
</head>
<body>
	<c:if test="${sucesso != null}">
		<div class="alert alert-primary" role="alert" style="width: 800px;margin-left: auto;margin-right: auto;margin-top:15px;">
  			${sucesso}
		</div>
	</c:if>
	<br>
	<table class="table table-striped">
		<tr>
			<th>Nome</th>
			<th>Categoria</th>
			<th>Descrição</th>
		</tr>

		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td>${produto.nome}</td>
				<td>${produto.categoria}</td>
				<td>${produto.descricao}</td>
			</tr>
		</c:forEach>
	</table>
	
	<br/>

	<div>
		<a href="form" class="btn btn-primary btn-lg active" style="margin: 0 auto;display: block;width: 200px;margin-bottom: 15px;" role="button" aria-pressed="true">Insert</a>
	</div>
</body>
</html>