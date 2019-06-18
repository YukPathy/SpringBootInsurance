'use strict';

angular.module('myApp').factory('ClientService', ['$http', '$cookies', '$location', function($http, $cookies, $location){

    var REST_SERVICE_URI = 'http://localhost:8080/';
    var factory = {
    		clientSave: clientSave,
    		createUser: createUser
        };

        return factory;
        
        function clientSave(clientdet) {
        	var response;
            
            $http({
                method: 'POST',
                url: '/clientSave',
                data: clientdet
	             }).then(function onSuccess(response) {
	            	    // Handle success
	            	    var data = response.data;
	            	    var status = response.status;
	            	    var statusText = response.statusText;
	            	    var headers = response.headers;
	            	    var config = response.config;
	            	    $location.path('/quoteVehicle');
	            	  }, function onError(response) {
	            	    // Handle error
	            	    var data = response.data;
	            	    var status = response.status;  
	            	    var statusText = response.statusText;
	            	    var headers = response.headers;
	            	    var config = response.config;	            	    
	            	  }
            	  );
                
        }
        
        /*function createUser(user) {
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
        }*/
   
}]);
