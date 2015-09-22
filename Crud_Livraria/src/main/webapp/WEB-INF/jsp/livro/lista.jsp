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
	<table width="953" height="24" border="4" align="center"   >
	
		<thead>
			<tr>
				<th>Titulo</th>
				<th>Autor</th>
				<th>Paginas</th>
				<th>Editora</th>
			</tr>
		</thead>
     <tbody>
		
			<c:forEach items="${livroEntityList}" var="livro">
			<tr>
			
				<td> ${livro.titulo} </td>
				<td> ${livro.autor} </td>
				<td> ${livro.paginas}</td> 
				<td> ${livro.editora}</td>
				<td><a href="<c:url value="/livros/${livro.id}"/>"> Editar
				</a></td>
			<td>
				<form action="<c:url value="/livros/${livro.id}"/>" method="POST">
					<button class="link" name="_method" value="DELETE">
						Remover</button>
				</form>
				</td>
				    <td>
				    <form  action="<c:url value="/livros/novo"/>" >
					<button >Novo</button>
				</form>
				</td>
				
		</tr>
			</c:forEach>
	
		</tbody>
		
	</table>
	
			
			
</body>
</html>