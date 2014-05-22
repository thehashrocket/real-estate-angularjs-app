realEstateApp = angular.module('realEstateApp', ['ngRoute','ngResource','templates', 'mk.editablespan', 'ui.sortable'])

realEstateApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

realEstateApp.config ($routeProvider, $locationProvider) ->
  $routeProvider.when '/', templateUrl: 'index.html', controller: 'MainController'
  $routeProvider.when '/dashboard', templateUrl: 'dashboard.html', controller: 'DashboardController'
  $routeProvider.when '/properties', templateUrl: 'property_list.html', controller: 'PropertiesController'
  $routeProvider.when '/admin/create', templateUrl: '/create.html', controller: 'AdminController'
  $routeProvider.when '/admin/manage', templateUrl: '/manage.html', controller: 'AdminController'
  $routeProvider.when '/task_lists/:list_id', templateUrl: '/templates/task_list.html', controller: 'TodoListController'   

# Makes AngularJS work with turbolinks.

