package br.com.livro.test;


import org.hibernate.Session;
import org.junit.Ignore;
import org.junit.Test;

import br.com.livraria.util.HibernateUtil;

public class CriandoAsTabelas {
	
	// Criando as tabelas do banco de dados
	
	@Test
	@Ignore
	public void criar(){
	
	Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
	sessao.close();
	}
	

}
