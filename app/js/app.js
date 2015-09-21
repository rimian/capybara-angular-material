
angular.module('app', ['ngMaterial', 'ngRoute']).config(function($routeProvider) {
  $routeProvider.when('/button', {templateUrl: 'app/partials/button.html', controller: 'buttonCtrl'});
  $routeProvider.when('/checkbox', {templateUrl: 'app/partials/checkbox.html', controller: 'checkboxCtrl'});
  $routeProvider.when('/radio', {templateUrl: 'app/partials/radio.html', controller: 'radioCtrl'});
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
}).controller('radioCtrl', function($scope) {
  $scope.data = {
    group1 : 'Banana',
    group2 : '2',
    group3 : 'avatar-1'
  };
  $scope.avatarData = [{
      id: "avatars:svg-1",
      title: 'avatar 1',
      value: 'avatar-1'
    },{
      id: "avatars:svg-2",
      title: 'avatar 2',
      value: 'avatar-2'
    },{
      id: "avatars:svg-3",
      title: 'avatar 3',
      value: 'avatar-3'
  }];
  $scope.radioData = [
    { label: '1', value: 1 },
    { label: '2', value: 2 },
    { label: '3', value: '3', isDisabled: true },
    { label: '4', value: '4' }
  ];
  $scope.submit = function() {
    alert('submit');
  };
  $scope.addItem = function() {
    var r = Math.ceil(Math.random() * 1000);
    $scope.radioData.push({ label: r, value: r });
  };
  $scope.removeItem = function() {
    $scope.radioData.pop();
  };
});
