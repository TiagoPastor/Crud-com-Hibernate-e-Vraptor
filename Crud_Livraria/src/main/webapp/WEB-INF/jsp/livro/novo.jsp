<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="<c:url value="/salvar"/> " method="POST" >
<fieldset >
  <legend>Cadastrar livro</legend>
   <br>
      
<label>Autor: </label>  
<input name="livro.autor"/><br/>

<label>Titulo:</label>
 <input name="livro.titulo"/><br/>
 
 <label>Paginas:</label>
 <input name="livro.paginas"/><br/>
 
 <label>Editora:</label>
 <input name="livro.editora"/><br/>
 
 <input type="submit"/>


</fieldset>

	</form>
</body>
</html>