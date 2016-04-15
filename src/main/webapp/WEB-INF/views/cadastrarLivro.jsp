<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE>
<html ng-app="cadastrarLivroControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Livro</title>
 
<style type="text/css">
 
	label{
	    display: inline-block;
	    width: 90px;
	}
 
</style>
<script type="text/javascript" src="../resources/javascript/angular.min.js"></script>
<script type="text/javascript" src="../resources/javascript/cadastrarLivroController.js"></script>
 
 
</head>
<body>
 
<form ng-controller="cadastrarLivroController">
 
	<h2>Novo Livro</h2>
	<br/>
 
	<label for="input-nome" >Nome:</label>
	<input type="text" id="input-nome" style="width:220px;" ng-model="nome"/>
 
	<br/><br/>
 
	<label for="input-escritor">Escritor:</label>
 	<input type="text" id="input-escritor" style="width:120px;" ng-model="escritor"/>
	<br/><br/>
 
	<label for="input-ano">Ano Edição:</label>
	<input type="text" id="input-ano" style="width:120px;" ng-model="ano"/>
 
	<br/><br/>
	
	<label for="input-classificacao">Classificação:</label>
	<input type="text" id="input-classificacao" style="width:120px;" ng-model="classificacao"/>
 
	<br/><br/>
 
 
	<p>
		<a href= "../">Voltar</a>
 
		<input type="button" value="Salvar" ng-click="salvarLivro()"/>
 
	</p>
 
 
</form>
 
 
 
</body>
</html>