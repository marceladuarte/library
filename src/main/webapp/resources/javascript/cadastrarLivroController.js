var cadastrarLivroControllerApp = angular.module("cadastrarLivroControllerApp",[]);
 
cadastrarLivroControllerApp.controller("cadastrarLivroController",function($scope, $window, $http){
 
	$scope.nome  = null;
	$scope.escritor = null;
	$scope.ano = null;
	$scope.classificacao = null;
	
	$scope.salvarLivro = function(){
 
		var livro =  new Object();
		livro.nome  = $scope.nome,
		livro.escritor = $scope.escritor,
		livro.ano = $scope.ano;
		livro.classificacao = $scope.classificacao;
 
		var response = $http.post("salvarLivro", livro);
 
		response.success(function(data, status, headers, config) {
 
		 if(data.codigo == 1){
 
			 $window.alert(data.mensagem);
 
			 $scope.nome  = null;
			 $scope.escritor = null;
			 $scope.ano = null;
			 $scope.classificacao = null;
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