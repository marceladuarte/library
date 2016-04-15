var editarRegistroLivroControllerApp = angular.module("editarRegistroLivroControllerApp",[]);
 
editarRegistroLivroControllerApp.controller("editarRegistroLivroController",function($scope, $window, $http){
 
	$scope.codigo = null;
	$scope.nome   = null;
	$scope.escritor  = null;
	$scope.ano  = null;
	$scope.classificacao  = null;
 
 
	$scope.alterarPessoa = function(){
 
		var livro =  new Object();
		livro.codigo = $scope.codigo;
		livro.nome   = $scope.nome,
		livro.escritor  = $scope.escritor,
		livro.ano  = $scope.ano,	
		$scope.classificacao  = $scope.classificacao;
 
		var response = $http.post("../alterarLivro", livro);
 
		response.success(function(data, status, headers, config) {
 
		 if(data.codigo == 1){
 
			 $window.alert(data.mensagem);
 
			 window.location.href = "../consultarRegistrosLivro.html";
 
		 }
		 else{
 
			 $window.alert(data.mensagem);
 
		 }
	 });
 
	 response.error(function(data, status, headers, config) {
		 $window.alert(data);
 
	 });		
 
 
	};
 
});