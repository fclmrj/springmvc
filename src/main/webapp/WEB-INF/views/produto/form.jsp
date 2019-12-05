<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Features - Produto form</title>
</head>
<body>

	<form action="/springmvc/produto/form/save" method="post">
	    <div>
	        <label>Nome</label>
	        <input type="text" name="nome" />
	    </div>
	    <div>
	        <label>Preço</label>
	        <input type="text" name="preco" />
	    </div>
	    <div>
	        <label>Categoria</label>
	        <input type="text" name="categoria" />
	    </div>
	    <button type="submit">Cadastrar</button>
	</form>

</body>
</html>