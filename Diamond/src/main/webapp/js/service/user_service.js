'use strict';

angular.module('myApp').factory('UserService', ['$http', '$cookies', '$location', function($http, $cookies, $location){

    var REST_SERVICE_URI = 'http://localhost:8080/';
    var factory = {
    		submitUser: submitUser,
    		ClearLoginCredentials: ClearLoginCredentials,
    		SetLoginCredentials:SetLoginCredentials,
    		Login: Login
        };

        return factory;
        
        function ClearLoginCredentials() {
            $rootScope.globals = {};
            $cookies.remove('globals');
            $http.defaults.headers.common.Authorization = 'Basic';
        }
        
        function Login(user) {
        	console.log('User checked in :::: '+user.userName+' pass ::: '+user.password);
        	var response;
            /* Dummy authentication for testing, uses $timeout to simulate api call
             ----------------------------------------------*/
            /*$timeout(function () {
                var response;
                UserService.getByUsername(username)
                    .then(function (user) {
                        if (user !== null && user.password === password) {
                            response = { success: true };
                        } else {
                            response = { success: false, message: 'Username or password is incorrect' };
                        }
                        callback(response);
                    });
            }, 1000);*/
 
            /* Use this for real authentication
             ----------------------------------------------*/
            /*$http.post('/user',user)
            .success(function (data, status, headers, config) {
                alert('Login Successfull ! ');
            })
            .error(function (data, status, headers, config) {
                alert("An error occurred during the AJAX request");
            });*/
            $http({
                method: 'POST',
                url: '/user',
                data: user
	             }).then(function onSuccess(response) {
	            	    // Handle success
	            	 //alert(response.data);
	            	    var data = response.data;
	            	    var status = response.status;
	            	    var statusText = response.statusText;
	            	    var headers = response.headers;
	            	    var config = response.config;
	            	    $location.path('/home');
	            	  }, function onError(response) {
	            	    // Handle error
	            	    var data = response.data;
	            	    var status = response.status;
	            	    var statusText = response.statusText;
	            	    var headers = response.headers;
	            	    var config = response.config;
	            	    
	            	  }
	            	  );

	             
	             /*
	             .then(function (response){
	            	 response = { success: true };
	            	 return response.success;
	             },function (error){
	            	 response = { success: false, message: 'Username or password is incorrect'};
	            	 return response.success;
	             }*/
	        
        	//submitUser(user);
                
        }
        
        function SetLoginCredentials(user) {
            var authdata = Base64.encode(user.userName + ':' + user.password);
 
            $rootScope.globals = {
                currentUser: {
                    username: user.userName,
                    authdata: authdata
                }
            };
 
            // set default auth header for http requests
            $http.defaults.headers.common['Authorization'] = 'Basic ' + authdata;
 
            // store user details in globals cookie that keeps user logged in for 1 week (or until they logout)
            var cookieExp = new Date();
            cookieExp.setDate(cookieExp.getDate() + 7);
            $cookies.putObject('globals', $rootScope.globals, { expires: cookieExp });
        }
    /*function submitUser1(rootURL, $scope, $state, $http) {
		
		var deferred = $q.defer();
        $http.get('http://localhost:8080/'+'/user')
            .then(
            function (response) {
            	alert('Logging Service', self.userName);
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }*/
        
    function submitUser(userForm) {
        var deferred = $q.defer();
        $http.post(REST_SERVICE_URI+'user', userForm)
            .then(
            function (response) {
            	console.log('User checked in :::: ');
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while checking User');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    /*var factory = {
        fetchAllUsers: fetchAllUsers,
        createUser: createUser,
        updateUser:updateUser,
        deleteUser:deleteUser
    };

    return factory;

    function fetchAllUsers() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }

    function sendStudentData(file){
    	var deferred = $q.defer();
    	$http.post(REST_SERVICE_URI, file)
    	.then(
                function (response) {
                    deferred.resolve(response.data);
                },
                function(errResponse){
                    console.error('Error while creating User');
                    deferred.reject(errResponse);
                }
            );
    	 return deferred.promise;
    }
    
    function createUser(user) {
        var deferred = $q.defer();
        $http.post(REST_SERVICE_URI, user)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while creating User');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }


    function updateUser(user, id) {
        var deferred = $q.defer();
        $http.put(REST_SERVICE_URI+id, user)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while updating User');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }

    function deleteUser(id) {
        var deferred = $q.defer();
        $http.delete(REST_SERVICE_URI+id)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while deleting User');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
*/
}]);
