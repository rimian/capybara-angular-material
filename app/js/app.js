
angular.module('app', ['ngMaterial']).controller('appController', function($scope) {
  $scope.inputs = {
    checkbox: {
      unchecked: {value: false, name: 'A nice checkbox'},
      checked:  {value: true, name: 'Woof'}
    }
  };
});
