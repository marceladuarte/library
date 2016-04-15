package br.com.marceladuarte.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import org.springframework.stereotype.Repository;

import br.com.marceladuarte.model.Pessoa;
 
@Repository
public class PessoaRepository {
 
	
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager manager;
 
 
	
	@javax.transaction.Transactional
	public void Salvar(Pessoa pessoa){
 
		manager.persist(pessoa);		
	}
 
	
	@javax.transaction.Transactional
	public void Alterar(Pessoa pessoaModel){
 
		manager.merge(pessoaModel);		
	}
 
	
	public Pessoa ConsultarPorCodigo(int codigo){
 
		return manager.find(Pessoa.class, codigo);		
	} 
 
	
	@javax.transaction.Transactional
	public void Excluir(int codigo){
 
		Pessoa pessoaModel = this.ConsultarPorCodigo(codigo);
 
		manager.remove(pessoaModel);
 
	}
 
	
	public List<Pessoa> TodosPessoas(){
 
		return manager.createQuery("SELECT c FROM Pessoa c ORDER BY c.nome ", Pessoa.class).getResultList();	
	}
 
}
