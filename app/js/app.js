
angular.module('app', ['ngMaterial', 'ngRoute']).config(function($routeProvider) {
  $routeProvider.when('/button', {templateUrl: 'app/partials/button.html', controller: 'buttonCtrl'});
  $routeProvider.when('/checkbox', {templateUrl: 'app/partials/checkbox.html', controller: 'checkboxCtrl'});
  $routeProvider.when('/list', {templateUrl: 'app/partials/list.html', controller: 'listCtrl'});
  $routeProvider.when('/radio', {templateUrl: 'app/partials/radio.html', controller: 'radioCtrl'});
  $routeProvider.when('/select', {templateUrl: 'app/partials/select.html', controller: 'selectCtrl'});
  $routeProvider.when('/toast', {templateUrl: 'app/partials/toast.html', controller: 'toastCtrl'});
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
}).controller('toastCtrl', function($scope, $mdToast) {
  $scope.closeToast = function() {
    $mdToast.hide();
  };
  $scope.showSimpleToast = function() {
    $mdToast.show(
      $mdToast.simple()
        .textContent('Simple Toast!')
        .position('top', 'right')
        .hideDelay(13000)
    );
  };
})
.controller('listCtrl', function($scope) {
    var imagePath = 'img/list/60.jpeg';
    $scope.phones = [
      { type: 'Home', number: '(555) 251-1234' },
      { type: 'Cell', number: '(555) 786-9841' },
    ];
    $scope.todos = [
      {
        face : imagePath,
        what: 'Brunch this weekend?',
        who: 'Min Li Chan',
        when: '3:08PM',
        notes: " I'll be in your neighborhood doing errands"
      },
      {
        face : imagePath,
        what: 'Brunch this weekend?',
        who: 'Min Li Chan',
        when: '3:08PM',
        notes: " I'll be in your neighborhood doing errands"
      },
      {
        face : imagePath,
        what: 'Brunch this weekend?',
        who: 'Min Li Chan',
        when: '3:08PM',
        notes: " I'll be in your neighborhood doing errands"
      },
      {
        face : imagePath,
        what: 'Brunch this weekend?',
        who: 'Min Li Chan',
        when: '3:08PM',
        notes: " I'll be in your neighborhood doing errands"
      },
      {
        face : imagePath,
        what: 'Brunch this weekend?',
        who: 'Min Li Chan',
        when: '3:08PM',
        notes: " I'll be in your neighborhood doing errands"
      },
    ];
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
}).controller('selectCtrl', function() {
  this.userState = '';
  this.states = ('AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS ' +
      'MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI ' +
      'WY').split(' ').map(function (state) { return { abbrev: state }; });
});
