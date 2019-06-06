//= require angular.min
//= require angular-animate.min
//= require angular-route.min

angular.module('application', ['ngRoute', 'ngAnimate'])
  .config(function ($routeProvider, $locationProvider) {
      'use strict';
      $routeProvider
        .when('/', {
          templateUrl: 'artists/index',
          controller: 'ArtistsController'
        })
        .when('/artists/:id', {
          templateUrl: 'artists/show',
          controller: 'ArtistController'
        });
      $locationProvider.html5Mode(true);
  })
  .controller('ApplicationController', ['$scope', '$http', function($scope, $http) {
    'use strict';
    $http.get('/artists.json')
      .then(function (response) {
        $scope.artists = response.data;
      });
  }])
  .controller('ArtistsController', [function() {
    'use strict';
  }])
  .controller('ArtistController', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
    'use strict';
    $http.get('/artists/' + $routeParams.id + '.json')
      .then(function (response) {
        $scope.artist = response.data;
      });
  }]);
