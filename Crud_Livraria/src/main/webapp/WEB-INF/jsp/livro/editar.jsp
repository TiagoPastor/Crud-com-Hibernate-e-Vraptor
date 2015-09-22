<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	 <form action="<c:url value="/livros/${livro.id }"/>" method="POST"> 

		<fieldset>
			<legend>Editar Livro</legend>
			
			<input type="hidden" name="livro.id" value="${livroEntity.id }" />
			
			 <label
				for="autor">Autor:</label> <input id="autor" type="text"
				name="livro.autor" value="${livroEntity.autor }" /> 
				
				<label for="titulo">Titulo:</label> <input id="titulo" type="text"
				name="livro.titulo" value="${livroEntity.titulo}" />
		
			<label for="paginas">Paginas:</label> <input id="paginas" type="text"
				name="livro.paginas" value="${livroEntity.paginas}" />
				
				<label for="editora">Editora:</label> <input id="editora" type="text"
				name="livro.editora" value="${livroEntity.editora}" />
				

			<button type="submit" name="_method" value="PUT">Enviar</button>
		</fieldset>
	</form>
</body>
</html>