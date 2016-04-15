<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE>
<html ng-app="cadastrarControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Pessoa</title>
 
<style type="text/css">
 
	label{
	    display: inline-block;
	    width: 90px;
	}
 
</style>
<script type="text/javascript" src="../resources/javascript/angular.min.js"></script>
<script type="text/javascript" src="../resources/javascript/cadastrarController.js"></script>
 
 
</head>
<body>
 
<form ng-controller="cadastrarController">
 
	<h2>Nova Pessoa</h2>
	<br/>
 
	<label for="input-nome" >Nome:</label>
	<input type="text" id="input-nome" style="width:220px;" ng-model="nome"/>
 
	<br/><br/>
 
	<label for="input-dtNascimento">Data Nascimento:</label>
 	<input type="date" id="input-dtNascimento" name="input" ng-model="dtNascimento"
       placeholder="yyyy-MM-dd" min="1900-01-01" required />
	<br/><br/>
 
	<label for="input-cpf">CPF:</label>
	<input type="text" id="input-cpf" style="width:120px;" ng-model="cpf"/>
 
	<br/><br/>
 
 
	<p>
		<a href= "../">Voltar</a>
 
		<input type="button" value="Salvar" ng-click="salvarPessoa()"/>
 
	</p>
 
 
</form>
 
 
 
</body>
</html>