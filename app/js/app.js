
angular.module('app', ['ngMaterial', 'ngRoute']).config(function($routeProvider) {
  $routeProvider.when('/checkbox', {templateUrl: 'app/partials/checkbox.html', controller: 'appController'});
  $routeProvider.when('/button', {templateUrl: 'app/partials/button.html', controller: 'appController'});
}).controller('appController', function($scope) {
  $scope.inputs = {
    checkbox: {
      unchecked: {value: false, name: 'A nice checkbox'},
      checked:  {value: true, name: 'Woof'}
    }
  };
});
