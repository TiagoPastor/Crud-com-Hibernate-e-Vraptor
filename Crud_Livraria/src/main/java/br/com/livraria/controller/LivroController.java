package br.com.livraria.controller;

import java.util.List;

import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

import br.com.livraria.dao.LivroDao;
import br.com.livraria.entity.LivroEntity;

/**
 * Classe Controller do vraptor.
 *  Diante da anotação @Resource o Vraptor sabe que essa classe será gerenciada por ele.
 * @author tiago pastor
 *
 */

@Resource
public class LivroController {
	
	private final LivroDao dao;
	private final Result result;
	
	
	
	
	public LivroController(LivroDao dao, Result result) {
		this.dao = dao;
		this.result = result;
	}



   @Get("/livros")
	public List<LivroEntity> lista(){
		return dao.listar();
		
	}
   @Get("/livros/novo")
   public void novo(){
	   
   }
   @Post("/salvar")
   public void salvar(LivroEntity livro){
	   dao.salvar(livro);
	   result.redirectTo(LivroController.class).lista();
   }
   
   @Put("/livros/{livros.id}")  
	public void altera(LivroEntity livro){
		dao.editar(livro);
		result.redirectTo(LivroController.class).lista();
	}
   
   @Get("/livros/{id}")
	public LivroEntity editar(Long id){
		return dao.buscar(id);
	}
   
   @Delete("livros/{id}")
	public void remove(Long id) {
		LivroEntity livro = dao.buscar(id);
		dao.excluir(livro);
		result.redirectTo(this).lista();
	}

}
