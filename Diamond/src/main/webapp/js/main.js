var app = angular.module("UserManagement", []);
 
// Controller Part
app.controller("UserController", function($scope, $http) {
 
 
    $scope.users = [];
    $scope.userForm = {
        userId: 1,
        userCode: "",
        userName: "",
        userEmail: ""
    };
 
    // Now load the data from server
    _refreshUserData();
 
    // HTTP POST/PUT methods for add/edit user
    // Call: http://localhost:8080/user
    $scope.submitUser = function() {
 
        var method = "";
        var url = "";
 
        if ($scope.userForm.userId == -1) {
            method = "POST";
            url = '/user';
        } else {
            method = "PUT";
            url = '/user';
        }
 
        $http({
            method: method,
            url: url,
            data: angular.toJson($scope.userForm),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(_success, _error);
    };
 
    $scope.createUser = function() {
        _clearFormData();
    }
 
    // HTTP DELETE- delete employee by Id
    // Call: http://localhost:8080/employee/{empId}
    $scope.deleteUser = function(user) {
        $http({
            method: 'DELETE',
            url: '/user/' + user.userId
        }).then(_success, _error);
    };
 
    // In case of edit
    $scope.editUser = function(user) {
        $scope.userForm.userId = user.userId;
        $scope.userForm.userCode = user.userCode;
        $scope.userForm.userName = user.userName;
        $scope.userForm.userEmail = user.userEmail;
    };
 
    // Private Method  
    // HTTP GET- get all employees collection
    // Call: http://localhost:8080/employees
    function _refreshUserData() {
        $http({
            method: 'GET',
            url: '/users'
        }).then(
            function(res) { // success
                $scope.users = res.data;
            },
            function(res) { // error
                console.log("Error: " + res.status + " : " + res.data);
            }
        );
    }
 
    function _success(res) {
        _refreshUserData();
        _clearFormData();
    }
 
    function _error(res) {
        var data = res.data;
        var status = res.status;
        var header = res.header;
        var config = res.config;
        alert("Error: " + status + ":" + data);
    }
 
    // Clear the form
    function _clearFormData() {
        $scope.userForm.userId = -1;
        $scope.userForm.userCode = "";
        $scope.userForm.userName = "";
        $scope.userForm.userEmail = "";
    };
});