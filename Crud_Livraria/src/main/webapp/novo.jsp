<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Bootstrap 101 Template</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

</head>
<body>

  <div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <a class="brand" href="#">Título</a>
    <ul class="nav">
     <li><a href="#cadastroLivros" data-toggle="modal">Cadastrar livros</a></li> 

      <li>
      <a href="livros" >Livros cadastrados</a></li>
      <li><a href="#">Link</a></li>
    </ul>
  </div>
</div>


 <!-- MODAL -->
 <div id="cadastroLivros" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Cadastro de livros</h3>
  </div>
  <div class="modal-body">

    <form id="formCadastro" class="form-horizontal"
      action="<c:url value="/salvar"/> " method="POST">
      
        <div class="control-group">
          <label for="" class="control-label">Título:</label>
          <div class="controls">
            <input type="text" class="form-control" name="livro.titulo" id="" placeholder="Título" title="Coloque o título do livro" required>   

          </div>
        </div> 

        <div class="control-group">
          <label for="" class="control-label">Autor:</label>
          <div class="controls">
            <input type="text" name="livro.autor" class="form-control"
              id="" placeholder="Autor" title="Coloque o autor do livro" required>
          </div>
        </div> 

         <div class="control-group">
         
        
          <label for="" class="control-label">Páginas</label>
          <div class="controls">
          
           
            <input type="text" class="form-control " name="livro.paginas"  id="" placeholder="Número de páginas" title="Coloque a quantidade de páginas" required>    

          </div>
        </div>

        <div class="control-group">
          <label for="" class="control-label">Editora:</label>
          <div class="controls">
            <input type="text" class="form-control " name="livro.editora"  id="" placeholder=" editora" title="Coloque o nome da editora" required>    
          </div>
        </div>
        
        </div>
  <div class="modal-footer">

    <button type="submit" class="btn btn-primary">Salvar cadastro</button>
    <button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
    
  </div>
</div>


</fieldset>

	</form>
	
	<center>
 <div id="myCarousel" class="carousel slide">
  <!-- Itens de carousel -->
  <div class="carousel-inner">
    <div class="active item">
     <img src=" img/livros1.jpg">
    </div>


    <div class="item">
    <img src=" img/livros2.jpg">
  </div>
    <div class="item">
      <img src=" img/livros3.jpg">
    </div>
  </div>
  <!-- Navegador do carousel -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>

</center>




    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>