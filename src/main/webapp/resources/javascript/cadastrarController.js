var cadastrarControllerApp = angular.module("cadastrarControllerApp",[]);
 
cadastrarControllerApp.controller("cadastrarController",function($scope, $window, $http){
 
	$scope.nome  = null;
	$scope.cpf = null;
	$scope.dtNascimento = null;
 
	$scope.salvarPessoa = function(){
 
		var pessoa =  new Object();
		pessoa.nome  = $scope.nome,
		pessoa.cpf = $scope.cpf,
		pessoa.dtNascimento = $scope.dtNascimento;		
 
		var response = $http.post("salvar", pessoa);
 
		response.success(function(data, status, headers, config) {
 
		 if(data.codigo == 1){
 
			 $window.alert(data.mensagem);
 
			 $scope.nome  = null;
			 $scope.cpf = null;
			 $scope.dtNascimento = null;
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