<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista dos livros</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>

	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<a class="brand" href="#">T�tulo</a>
			<ul class="nav">
				<li><a href="#cadastroLivros" data-toggle="modal">Cadastrar
						livros</a></li>

				<li><a href="livros">Livros cadastrados</a></li>
				<li><a href="#">Link</a></li>
			</ul>
		</div>
	</div>

	<!-- MODAL -->
	<div id="cadastroLivros" class="modal hide fade" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">�</button>
			<h3 id="myModalLabel">Cadastro de livros</h3>
		</div>
		<div class="modal-body">

			<form id="formCadastro" class="form-horizontal"
				action="<c:url value="/salvar"/> " method="POST">

				<div class="control-group">
					<label for="" class="control-label">T�tulo:</label>
					<div class="controls">
						<input type="text" class="form-control" name="livro.titulo" id=""
							placeholder="T�tulo" title="Coloque o t�tulo do livro" required>

					</div>
				</div>

				<div class="control-group">
					<label for="" class="control-label">Autor:</label>
					<div class="controls">
						<input type="text" name="livro.autor" class="form-control" id=""
							placeholder="Autor" title="Coloque o autor do livro" required>
					</div>
				</div>

				<div class="control-group">


					<label for="" class="control-label">P�ginas</label>
					<div class="controls">


						<input type="text" class="form-control " name="livro.paginas"
							id="" placeholder="N�mero de p�ginas"
							title="Coloque a quantidade de p�ginas" required>

					</div>
				</div>

				<div class="control-group">
					<label for="" class="control-label">Editora:</label>
					<div class="controls">
						<input type="text" class="form-control " name="livro.editora"
							id="" placeholder=" editora" title="Coloque o nome da editora"
							required>
					</div>
				</div>
		</div>
		<div class="modal-footer">

			<button type="submit" class="btn btn-primary">Salvar
				cadastro</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>

		</div>
	</div>

	<div class="table-responsive">
		<table class="table table-bordered table-striped">

			<thead>
				<tr>
					
					<th class="text-center col-md-1">Titulo</th>
					<th class="text-center col-md-1">Autor</th>
					<th class="text-center col-md-1">Paginas</th>
					<th class="text-center col-md-1">Editora</th>
					<th class="text-center col-md-2">Op��es</th>

				</tr>
			</thead>
			<tfoot>
			   <tr>
					
					<th class="text-center col-md-1">Titulo</th>
					<th class="text-center col-md-1">Autor</th>
					<th class="text-center col-md-1">Paginas</th>
					<th class="text-center col-md-1">Editora</th>
					<th class="text-center col-md-2">Op��es</th>

				</tr>
			
			</tfoot>
			
			<tbody>
			   <c:forEach items="${livroEntityList}" var="livro">
			<tr>
			
				<td class="text-center col-md-1"> ${livro.titulo} </td>
				<td class="text-center col-md-1"> ${livro.autor} </td>
				<td class="text-center col-md-1"> ${livro.paginas}</td> 
				<td class="text-center col-md-1"> ${livro.editora}</td>
				<td class="text-center col-md-2"><a href="<c:url value="/livros/${livro.id}"/>"> Editar
				</a>
			
				<form action="<c:url value="/livros/${livro.id}"/>" method="POST">
					<button class="btn btn-danger" name="_method" value="DELETE">
						Remover</button>
				</form>
				</td>
				   <%--  <td>
				    <form  action="<c:url value="/livros/novo"/>" >
					<button >Novo</button>
				</form>
				</td> --%>
				
		</tr>
			</c:forEach>
			</tbody>


		</table>

	</div>





	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>