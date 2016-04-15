<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html ng-app="consultarRegistrosControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style>
        html                    { overflow-y:scroll; }
        body                    { padding-top:50px; padding-right:50px; padding-left:50px;}
</style>
<title>Consultar Registros</title>
 
 
<script type="text/javascript" src="../resources/javascript/angular.min.js"></script>
<script type="text/javascript" src="../resources/javascript/consultarRegistrosController.js"></script>
 
</head>
<body>
 
	<table class="table table-striped" ng-controller="consultarRegistrosController"  data-ng-init="init()">
     <thead>
       <tr>
         <th>Código</th>
         <th>Nome</th>
         <th>Data Nascimento</th>
         <th>CPF</th>
         <th></th>
         <th></th>
       </tr>
     </thead>
     <tbody>
       <tr ng-repeat="pessoa in pessoas">
 
         <td>{{ pessoa.codigo }}</td>
         <td>{{ pessoa.nome }}</td>
         <td>{{ pessoa.dtNascimento }}</td>
         <td>{{ pessoa.cpf }}</td>
         <td><button type="button" class="btn btn-default" ><a  ng-href="editarRegistro.html/{{pessoa.codigo}}" >Editar</a></button></td>
         <td><button type="button" class="btn btn-default" ><a href="#" ng-click="excluirRegistro(pessoa.codigo)">Excluir</a></button></td>        
       </tr>
     </tbody>
   </table>
 
   <a href= "../">Voltar</a>
 
 
</body>
</html>