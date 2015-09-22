package br.com.livraria.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.livraria.entity.LivroEntity;
import br.com.livraria.util.HibernateUtil;

/**
 * Classe DAO contendo os métodos salvar,listar,editar,excluir e buscar pelo ID
 * @author tiago pastor
 *
 */


@Component
public class LivroDao {
	
	//Método para salvar
	
	public void salvar(LivroEntity livro) {
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		Transaction transacao = null;

		try {
			transacao = sessao.beginTransaction();
			sessao.save(livro);
			transacao.commit();
		} catch (RuntimeException ex) {
			if (transacao != null) {
				transacao.rollback();
			}
			throw ex;
		} finally {
			sessao.close();
		}
	}
	 // Método para editar
	
	public void editar(LivroEntity livro) {
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		Transaction transacao = null;

		try {
			transacao = sessao.beginTransaction();
			sessao.update(livro);
			transacao.commit();
			System.out.println("transação confirmada!!!");
		} catch (RuntimeException ex) {
			if (transacao != null) {
				transacao.rollback();
			}
			
			System.out.println("transação encerrada");
			throw ex;
		} finally {
			sessao.close();
			
			System.out.println("sessão encerrada");
		}
	}
	// Método para excluir 
	
	public void excluir(LivroEntity livro) {
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		Transaction transacao = null;

		try {
			transacao = sessao.beginTransaction();
			sessao.delete(livro);
			transacao.commit();
		} catch (RuntimeException ex) {
			if (transacao != null) {
				transacao.rollback();
			}
			throw ex;
		} finally {
			sessao.close();
		}
	}
	
	// Método listar
	
		@SuppressWarnings("unchecked")
		public List<LivroEntity> listar() {
			Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();

			try {
				Criteria consulta = sessao.createCriteria(LivroEntity.class);
				List<LivroEntity> resultado = consulta.list();
				return resultado;
			} catch (RuntimeException ex) {
				throw ex;
			} finally {
				sessao.close();
			}
		}
		
		// Método Buscar pelo ID
		
		@SuppressWarnings("unchecked")
		public LivroEntity buscar(Long id) {
			Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
			try {
				Criteria consulta = sessao.createCriteria(LivroEntity.class);
				consulta.add(Restrictions.idEq(id));
				LivroEntity resultado = (LivroEntity) consulta.uniqueResult();
				return resultado;
			} catch (RuntimeException ex) {
				throw ex;
			} finally {
				sessao.close();
			}
		}

}
