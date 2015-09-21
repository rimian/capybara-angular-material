
angular.module('app', ['ngMaterial', 'ngRoute']).config(function($routeProvider) {
  $routeProvider.when('/button', {templateUrl: 'app/partials/button.html', controller: 'appController'});
  $routeProvider.when('/checkbox', {templateUrl: 'app/partials/checkbox.html', controller: 'checkboxCtrl'});
  $routeProvider.when('/radio', {templateUrl: 'app/partials/radio.html', controller: 'appController'});
}).controller('appController', function($scope) {
  $scope.data = {
    group1 : 'Banana',
    group2 : '2',
    group3 : 'avatar-1'
  };
}).controller('checkboxCtrl', function($scope) {
  $scope.data = {};
  $scope.data.cb1 = true;
  $scope.data.cb2 = false;
  $scope.data.cb3 = false;
  $scope.data.cb4 = false;
  $scope.data.cb5 = false;
});
