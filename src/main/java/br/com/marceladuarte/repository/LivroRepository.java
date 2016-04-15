package br.com.marceladuarte.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import org.springframework.stereotype.Repository;

import br.com.marceladuarte.model.Livro;
 
@Repository
public class LivroRepository {
 
	
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager manager;
 
 
	
	@javax.transaction.Transactional
	public void Salvar(Livro livro){
 
		manager.persist(livro);		
	}
 
	
	@javax.transaction.Transactional
	public void Alterar(Livro livroModel){
 
		manager.merge(livroModel);		
	}
 
	
	public Livro ConsultarPorCodigo(int codigo){
 
		return manager.find(Livro.class, codigo);		
	} 
 
	
	@javax.transaction.Transactional
	public void Excluir(int codigo){
 
		Livro livroModel = this.ConsultarPorCodigo(codigo);
 
		manager.remove(livroModel);
 
	}
 
	
	public List<Livro> TodosLivros(){
 
		return manager.createQuery("SELECT c FROM Livro c ORDER BY c.nome ", Livro.class).getResultList();	
	}
 
}
