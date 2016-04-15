package br.com.marceladuarte.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="pessoa")
@Entity
public class Pessoa {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer  codigo;
 
	@Column(name="nome")
	private String   nome;
 
	@Column(name="dt_nascimento")
	private Date   dtNascimento;
 
	@Column(name="cpf")	
	private String   cpf;
	
	
 
	public Integer getCodigo() {
		return codigo;
	}



	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}



	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	public Date getDtNascimento() {
		return dtNascimento;
	}



	public void setDtNascimento(Date dtNascimento) {
		this.dtNascimento = dtNascimento;
	}



	public String getCpf() {
		return cpf;
	}



	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

}
