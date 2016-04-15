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

import br.com.marceladuarte.model.Livro;
import br.com.marceladuarte.model.ResultadoModel;
import br.com.marceladuarte.repository.LivroRepository;
	
@Controller
@RequestMapping("/livro")
public class LivroController {
	 
		
		@Autowired
		ResultadoModel resultadoModel;
	 
		
		@Autowired
		LivroRepository livroRepository;
	 
	 
		
		@RequestMapping(value ="/cadastrarLivro.html", method= RequestMethod.GET)
		public ModelAndView Cadastrar(){
	 
			return new ModelAndView("cadastrarLivro");
		}	
	 
		@RequestMapping(value ="/consultarRegistrosLivro.html", method= RequestMethod.GET)
		public ModelAndView Consultar(){
	 
			return new ModelAndView("consultarRegistrosLivro");
		}
	 
		
		@RequestMapping(value ="/editarRegistroLivro.html/{codigo}", method= RequestMethod.GET)
		public ModelAndView EditarRegistroLivro(@PathVariable int codigo){
	 
			Livro livro = livroRepository.ConsultarPorCodigo(codigo);
	 
			return new ModelAndView("editarRegistroLivro","livro",livro);
		}
	 
		
		@RequestMapping(value="/salvarLivro", method= RequestMethod.POST)
		public @ResponseBody ResultadoModel SalvarLivro(@RequestBody Livro livro){
	 
			try {
	 
				livroRepository.Salvar(livro);
	 
				resultadoModel.setCodigo(1);
				resultadoModel.setMensagem("Registro inserido com sucesso!");
	 
			} catch (Exception e) {
	 
				resultadoModel.setCodigo(2);
				resultadoModel.setMensagem("Erro ao salvar o registro ("+e.getMessage()+")");
			}
	 
			return resultadoModel;
		}
	 
		
		@RequestMapping(value="/alterarLivro", method= RequestMethod.POST)
		public @ResponseBody ResultadoModel AlterarLivro(@RequestBody Livro livro){
	 
			try {
	 
				livroRepository.Alterar(livro);
	 
				resultadoModel.setCodigo(1);
				resultadoModel.setMensagem("Registro alterado com sucesso!");
	 
			} catch (Exception e) {
	 
				resultadoModel.setCodigo(2);
				resultadoModel.setMensagem("Erro ao salvar o registro ("+e.getMessage()+")");
			}
	 
			return resultadoModel;
		}
	 
	 
		
		@RequestMapping(value="/consultarTodosLivro", method= RequestMethod.GET)
		public @ResponseBody List<Livro> ConsultarTodosLivro(){
	 
			return livroRepository.TodosLivros();
	 
		}
	 
		
		@RequestMapping(value="/excluirRegistroLivro/{codigo}", method= RequestMethod.DELETE)
		public @ResponseBody void ExcluirRegistroLivro(@PathVariable int codigo){
	 
			livroRepository.Excluir(codigo);
	 
		}
	 
	}


