var app = angular.module('studentApp',[]);

app.filter('capitalize', function() {
 return function(input, scope) {
 if (input!=null)
 input = input.toLowerCase();
 return input.substring(0,1).toUpperCase()+input.substring(1);
 }
});

app.controller('mainController', function($scope, $http) {
	$http({method: 'GET', url: '/students.json'}).
    success(function(data, status, headers, config) {
      // this callback will be called asynchronously
      // when the response is available
      $scope.students = data;
      $scope.test = "test";
    }).
    error(function(data, status, headers, config) {
      // called asynchronously if an error occurs
      // or server returns response with an error status.
    });
		$scope.test = "cool";
});