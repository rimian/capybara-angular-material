
angular.module('app', ['ngMaterial', 'ngRoute']).config(function($routeProvider) {
  $routeProvider.when('/button', {templateUrl: 'app/partials/button.html', controller: 'buttonCtrl'});
  $routeProvider.when('/checkbox', {templateUrl: 'app/partials/checkbox.html', controller: 'checkboxCtrl'});
  $routeProvider.when('/radio', {templateUrl: 'app/partials/radio.html', controller: 'appController'});
}).controller('appController', function($scope) {
}).controller('buttonCtrl', function($scope) {
  $scope.title1 = 'Button';
  $scope.title4 = 'Warn';
  $scope.isDisabled = true;
  $scope.googleUrl = 'http://google.com';
}).controller('checkboxCtrl', function($scope) {
  $scope.data = {};
  $scope.data.cb1 = true;
  $scope.data.cb2 = false;
  $scope.data.cb3 = false;
  $scope.data.cb4 = false;
  $scope.data.cb5 = false;
});
