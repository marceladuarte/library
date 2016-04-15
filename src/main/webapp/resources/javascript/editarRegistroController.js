var editarRegistroControllerApp = angular.module("editarRegistroControllerApp",[]);
 
editarRegistroControllerApp.controller("editarRegistroController",function($scope, $window, $http){
 
	$scope.codigo = null;
	$scope.nome   = null;
	$scope.login  = null;
	$scope.senha  = null;
	$scope.ativo  = null;
 
 
	$scope.alterarPessoa = function(){
 
		var pessoa =  new Object();
		pessoa.codigo = $scope.codigo;
		pessoa.nome   = $scope.nome,
		pessoa.cpf  = $scope.cpf,
		pessoa.dtNascimento  = $scope.dtNascimento		
 
		var response = $http.post("../alterar", pessoa);
 
		response.success(function(data, status, headers, config) {
 
		 if(data.codigo == 1){
 
			 $window.alert(data.mensagem);
 
			 window.location.href = "../consultarRegistros.html";
 
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