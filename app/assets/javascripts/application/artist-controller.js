/* global application */
application.controller('ArtistController', ['$scope', '$http', '$routeParams', '$window', function($scope, $http, $routeParams, $window) {
  'use strict';
  $http.get('/artists/' + $routeParams.id + '.json')
    .then(function (response) {
      $scope.artist = response.data;
      $window.document.title = $scope.artist.name;
    });
}]);
