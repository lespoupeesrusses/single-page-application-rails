//= require angular.min
//= require angular-animate.min
//= require angular-route.min
//= require_self
//= require_tree ./application

/* global angular */
var application = angular.module('application', ['ngRoute', 'ngAnimate'])
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
  });
