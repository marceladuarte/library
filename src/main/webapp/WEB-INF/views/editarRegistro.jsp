<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE>
<html ng-app="editarRegistroControllerApp">
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
<script type="text/javascript" src="<spring:url value="/resources/javascript/editarRegistroController.js"/>"></script>
 
</head>
<body>
 
<form ng-controller="editarRegistroController">
 
	<h2>Editar Pessoa</h2>
	<br/>
 
	<label for="input-codigo" >Código:</label>
	<input type="text" id="input-codigo" style="width:80px;" ng-model="codigo" readonly="readonly"  ng-init="codigo='${pessoa.codigo}'"/>
 
	<br/><br/>
 
	<label for="input-nome" >Nome:</label>
	<input type="text" id="input-nome" style="width:220px;" ng-model="nome"  ng-init="nome='${pessoa.nome}'"/>
 
	<br/><br/>
 
	<label for="input-dtNascimento">Data Nascimento:</label>
	<input type="date" id="input-dtNascimento" style="width:120px;" ng-model="dtNascimento" ng-init="dtNascimento='${pessoa.dtNascimento}'"/>
 
	<br/><br/>
 
	<label for="input-cpf">CPF:</label>
	<input type="text" id="input-cpf" style="width:120px;" ng-model="cpf" ng-init="cpf='${pessoa.cpf}'"/>
 
	<br/><br/>
 
 
	<div class="form-group col-md-3">
		<a href= "../consultarRegistros.html">Voltar</a>
 
		<input type="button" value="Salvar" ng-click="alterarPessoa()"/>
 
	</div>
 
</form>
 
 
 
 
</body>
</html>