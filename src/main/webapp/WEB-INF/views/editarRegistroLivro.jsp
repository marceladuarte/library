<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE>
<html ng-app="editarRegistroLivroControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<title>Editar Registro</title>
 
<style type="text/css">
 
	label{
	    display: inline-block;
	    width: 90px;
	}
 
</style>
<script type="text/javascript" src="<spring:url value="/resources/javascript/angular.min.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/resources/javascript/editarRegistroLivroController.js"/>"></script>
 
</head>
<body>
 
<form ng-controller="editarRegistroLivroController">
 
	<h2>Editar Livro</h2>
	<br/>
 
	<label for="input-codigo" >Código:</label>
	<input type="text" id="input-codigo" style="width:80px;" ng-model="codigo" readonly="readonly"  ng-init="codigo='${livro.codigo}'"/>
 
	<br/><br/>
 
	<label for="input-nome" >Nome:</label>
	<input type="text" id="input-nome" style="width:220px;" ng-model="nome"  ng-init="nome='${livro.nome}'"/>
 
	<br/><br/>
 
	<label for="input-escritor">Escritor:</label>
	<input type="text" id="input-escritor" style="width:120px;" ng-model="escritor" ng-init="escritor'${livro.escritor}'"/>
 
	<br/><br/>
 
	<label for="input-ano">Ano:</label>
	<input type="text" id="input-ano" style="width:120px;" ng-model="ano" ng-init="ano'${livro.ano}'"/>
 
	<br/><br/>
 
 
	<div class="form-group col-md-3">
		<a href= "../consultarRegistrosLivro.html">Voltar</a>
 
		<input type="button" value="Salvar" ng-click="alterarLivro()"/>
 
	</div>
 
</form>
 
 
 
 
</body>
</html>