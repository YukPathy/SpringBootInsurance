//Quotation client Controller
(function () {
	'use strict';
	angular
	.module('myApp')
	.controller('ClientController', ClientController);
	ClientController.$inject = ['$location','ClientService'];
	
	function LoginController( $location, ClientService) {
		var vm = this;

		vm.clientSave = clientSave;

		function clientSave() {
			console.log("client Save method executing");
			vm.dataLoading = true;
			ClientService.Login(vm.clientdet, function (response) {
				/*alert(response.success);
				if (response.data == "client") {
					$location.path('/home');
				} else {
					alert(response.message);
					vm.dataLoading = false;
				}*/
			});
			
		}
	}
	
		
})();
