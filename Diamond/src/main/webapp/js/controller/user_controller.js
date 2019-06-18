//loginController
(function () {
	'use strict';
	angular
	.module('myApp')
	.controller('LoginController', LoginController);
	LoginController.$inject = ['$location','UserService'];
	//LoginController.$inject = ['$location'];
	//function LoginController( $location, AuthenticationService) {
	function LoginController( $location, UserService) {
		var vm = this;
		//vm.userForm={userName:'admin1',password:''};
		vm.login = login;
		//alert("test");
		
		/*(function initController() {
			// reset login status
			UserService.ClearLoginCredentials();
			vm.userName='admin';
			vm.password='';
		})();*/
		function login() {
			console.log("login method executing");
			vm.dataLoading = true;
			UserService.Login(vm.userForm, function (response) {
				alert(response.success);
				if (response.data == "client") {
				//UserService.SetCredentials(vm.userForm);
					alert("success");
				$location.path('/home');
			} else {
				alert(response.message);
				vm.dataLoading = false;
			}
		});
			//AuthenticationService.Login(vm.username, vm.password, function (response) {
				//if (response.success) {
					//AuthenticationService.SetCredentials(vm.username, vm.password);
					//$location.path('/home');
				/*} else {
					alert(response.message);
					vm.dataLoading = false;
				}
			});*/
		}
	}
	
	angular
	.module('myApp')
	.controller('HomeController', HomeController);

		HomeController.$inject = ['UserService', '$rootScope'];
		function HomeController(UserService, $rootScope) {
		    var vm = this;
		    
		    /*vm.showUsers = false;
		    
		    vm.currentUser = null;
		    vm.allUsers = [];
		    
		    initController();
		
		    function initController() {
		        loadCurrentUser();
		        loadAllUsers();
		    }
		    function loadCurrentUser() {
		        UserService.getByUsername($rootScope.globals.currentUser.username)
		            .then(function (user) {
		                vm.currentUser = user;
		            });
		    }
		    function loadAllUsers() {
		        UserService.get()
		            .then(function (users) {
		                vm.allUsers = users;
		            });
		    }*/
		}
})();

/*'use strict';

angular.module('myApp').controller('EmployeeController', ['$scope', 'UserService', function($scope, UserService) {
    var self = this;
    //alert('Logging In '+self.userForm);
    self.userForm={userName:'admin',password:''};
    self.submit = submit;
    function submit() {
    	/*alert('Logging In 1: ', $scope.userForm.userName);
    	alert('Logging In 2: ', self.userForm.userName);
    	alert('Logging In 3: ', self.userName);    	
    	alert('Logging In 5: ', userForm.userName);
        UserService.submitUser(self.userForm);            
    }	
}]);
*/