package br.com.marceladuarte.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.marceladuarte.model.Pessoa;
import br.com.marceladuarte.model.ResultadoModel;
import br.com.marceladuarte.repository.PessoaRepository;
	
@Controller
@RequestMapping("/pessoa")
public class PessoaController {
	 
		
		@Autowired
		ResultadoModel resultadoModel;
	 
		
		@Autowired
		PessoaRepository pessoaRepository;
	 
	 
		
		@RequestMapping(value ="/cadastrar.html", method= RequestMethod.GET)
		public ModelAndView Cadastrar(){
	 
			return new ModelAndView("cadastrar");
		}	
	 
		@RequestMapping(value ="/consultarRegistros.html", method= RequestMethod.GET)
		public ModelAndView Consultar(){
	 
			return new ModelAndView("consultarRegistros");
		}
	 
		
		@RequestMapping(value ="/editarRegistro.html/{codigo}", method= RequestMethod.GET)
		public ModelAndView EditarRegistro(@PathVariable int codigo){
	 
			Pessoa pessoa = pessoaRepository.ConsultarPorCodigo(codigo);
	 
			return new ModelAndView("editarRegistro","pessoa",pessoa);
		}
	 
		
		@RequestMapping(value="/salvar", method= RequestMethod.POST)
		public @ResponseBody ResultadoModel Salvar(@RequestBody Pessoa pessoa){
	 
			try {
	 
				pessoaRepository.Salvar(pessoa);
	 
				resultadoModel.setCodigo(1);
				resultadoModel.setMensagem("Registro inserido com sucesso!");
	 
			} catch (Exception e) {
	 
				resultadoModel.setCodigo(2);
				resultadoModel.setMensagem("Erro ao salvar o registro ("+e.getMessage()+")");
			}
	 
			return resultadoModel;
		}
	 
		
		@RequestMapping(value="/alterar", method= RequestMethod.POST)
		public @ResponseBody ResultadoModel Alterar(@RequestBody Pessoa pessoa){
	 
			try {
	 
				pessoaRepository.Alterar(pessoa);
	 
				resultadoModel.setCodigo(1);
				resultadoModel.setMensagem("Registro alterado com sucesso!");
	 
			} catch (Exception e) {
	 
				resultadoModel.setCodigo(2);
				resultadoModel.setMensagem("Erro ao salvar o registro ("+e.getMessage()+")");
			}
	 
			return resultadoModel;
		}
	 
	 
		
		@RequestMapping(value="/consultarTodos", method= RequestMethod.GET)
		public @ResponseBody List<Pessoa> ConsultarTodos(){
	 
			return pessoaRepository.TodosPessoas();
	 
		}
	 
		
		@RequestMapping(value="/excluirRegistro/{codigo}", method= RequestMethod.DELETE)
		public @ResponseBody void ExcluirRegistro(@PathVariable int codigo){
	 
			pessoaRepository.Excluir(codigo);
	 
		}
	 
	}


