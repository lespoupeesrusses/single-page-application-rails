/* global application */
application.controller('ApplicationController', ['$scope', '$http', function($scope, $http) {
  'use strict';
  $http.get('/artists.json')
    .then(function (response) {
      $scope.artists = response.data;
    });
}])
