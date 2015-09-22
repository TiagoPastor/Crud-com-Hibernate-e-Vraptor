package br.com.livro.test;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;

import br.com.livraria.dao.LivroDao;
import br.com.livraria.entity.LivroEntity;

/** 
 * Classe DAO de testes usando o Junit
 * @author tiago pastor
 *
 */

public class LivroDaoTest {
	
	@Test
	@Ignore
	public void salvar(){
		LivroEntity livro = new LivroEntity();
		livro.setAutor("JOÃO GUIMARÃES ROSA");
		livro.setEditora("Livraria josé olympio editora");
		livro.setPaginas(400);
		livro.setTitulo("corpo de baile");
		
		LivroDao dao = new LivroDao();
		dao.salvar(livro);
		
		System.out.println(livro);
	}
	  @Test
	  @Ignore
	public void lista(){
		LivroDao dao = new LivroDao();
		List<LivroEntity> list = dao.listar();
		
		System.out.println(list);
	}
	  @Test
	  @Ignore
	  public void buscarID(){
		  LivroDao dao = new LivroDao();
		  LivroEntity livro = dao.buscar(2L);
		  System.out.println(livro);
		  
	  }
	  @Test
	  @Ignore
	  public void editar(){
		  LivroDao dao = new LivroDao();
		  LivroEntity livro = dao.buscar(6L);
		  livro.setAutor("tiago");
		  livro.setEditora("saraiva");
		  livro.setTitulo("java");
		  
		  dao.editar(livro);
		  
		  System.out.println(livro);
	  }
	  
	  @Test
	  @Ignore
	  public void excluir(){
		  LivroDao dao = new LivroDao();
		  LivroEntity livro = dao.buscar(2L);
		  dao.excluir(livro);
		  System.out.println(livro + "Livro excluido com sucesso!!");
	  }

}
