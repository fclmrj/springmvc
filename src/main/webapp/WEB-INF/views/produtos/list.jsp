<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Features - Produto list</title>
</head>
<body>
	<table>
	    <tr>
	        <td>Nome</td>
	        <td>Categoria</td>
	        <td>Descrição</td>
	    </tr>
	
	    <c:forEach items="${produtos}" var="produto">
	        <tr>
	            <td>${produto.nome}</td>
	            <td>${produto.categoria}</td>
	            <td>${produto.descricao}</td>
	        </tr>
	    </c:forEach>
	</table>
	
	<a href="form">Incluir</a>
</body>
</html>