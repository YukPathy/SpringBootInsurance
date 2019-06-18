(
		function () {
		    'use strict';
		 
		    angular
		        .module('myApp', ['ngRoute', 'ngCookies'])
		        .config(config)
		        .run(run);
		 
		    config.$inject = ['$routeProvider', '$locationProvider'];
		    function config($routeProvider, $locationProvider) {
		        $routeProvider
		        .when('/', {
		                controller: 'LoginController',
		                templateUrl: 'adminLogin',
		                controllerAs: 'vm'
		            })
		 
		            .when('/home', {
		                controller: 'HomeController',
		                templateUrl: 'client',
		                controllerAs: 'vm',
		            })
		            .when('/client', {
		                controller: 'ClientController',
		                templateUrl: 'vehicle',
		                controllerAs: 'vm',
		            })
		            .otherwise({ redirectTo: '/adminLogin' });
		    }    
		    run.$inject = ['$rootScope'];
		    
		    function run(){
		      //console.clear();
		    }
		})();