var consultarRegistrosLivroControllerApp = angular.module("consultarRegistrosLivroControllerApp",[]);
 
consultarRegistrosLivroControllerApp.controller("consultarRegistrosLivroController",function($scope, $window, $http){
 
	 $scope.livros = new Array();
 
 
	 $scope.init = function(){
 
		 var response = $http.get("consultarTodosLivro");
 
		 response.success(function(data, status, headers, config) {
 
			 
			 $scope.livros = data;
 
		 });
 
		 response.error(function(data, status, headers, config) {
			 
			 $window.alert(data);
 
		 });
	 }
 
	 	 
	 $scope.excluirRegistro = function(codigo){
 
		 if($window.confirm("Deseja realmente excluir esse registro?")){
 
			 
			 var response = $http.delete("excluirRegistroLivro/" + codigo);
 
			 response.success(function(data, status, headers, config) {
 
				 
				 $scope.init();
 
			 });
 
			 response.error(function(data, status, headers, config) {
				 
				 $window.alert(data);
 
			 });
 
		 }
 
 
	 }
 
});