<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html ng-app="consultarRegistrosLivroControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style>
        html                    { overflow-y:scroll; }
        body                    { padding-top:50px; padding-right:50px; padding-left:50px;}
</style>
<title>Consultar Registros</title>
 
 
<script type="text/javascript" src="../resources/javascript/angular.min.js"></script>
<script type="text/javascript" src="../resources/javascript/consultarRegistrosLivroController.js"></script>
 
</head>
<body>
 
	<table class="table table-striped" ng-controller="consultarRegistrosLivroController"  data-ng-init="init()">
     <thead>
       <tr>
         <th>Código</th>
         <th>Nome</th>
         <th>Escritor</th>
         <th>Ano</th>
         <th>Classificação</th>
         <th></th>
         <th></th>
       </tr>
     </thead>
     <tbody>
       <tr ng-repeat="livro in livros">
 
         <td>{{ livro.codigo }}</td>
         <td>{{ livro.nome }}</td>
         <td>{{ livro.escritor }}</td>
         <td>{{ livro.ano }}</td>
         <td>{{ livro.classificacao }}</td>
         <td><button type="button" class="btn btn-default" ><a  ng-href="editarRegistroLivro.html/{{livro.codigo}}" >Editar</a></button></td>
         <td><button type="button" class="btn btn-default" ><a href="#" ng-click="excluirRegistroLivro(livro.codigo)">Excluir</a></button></td>        
       </tr>
     </tbody>
   </table>
 
   <a href= "../">Voltar</a>
 
 
</body>
</html>