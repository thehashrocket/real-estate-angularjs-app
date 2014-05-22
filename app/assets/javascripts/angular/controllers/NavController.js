'use strict';

angular.module('realEstateApp').controller('NavController', ['$scope', '$routeParams', '$location', function($scope, $routeParams, $location) {

    $scope.init = function() {
        $scope.result = 'hey hey there'
    };

    $scope.viewCreateProperty = function(postId) {
        $location.url('/admin/create')
    };

    $scope.viewDashboard = function(postId) {
        $location.url('/dashboard')
    };

    $scope.viewManageProperties = function(postId) {
        $location.url('/admin/properties')
    };

    $scope.viewProperties = function(postId) {
        $location.url('/properties')
    };


    var serverErrorHandler = function() {
        alert("There was a server error, please reload the page and try again.")
    };

    $scope.square = function(x) {
        return x * x
    };

    $scope.getClass = function(path) {
        if ($location.path().substr(0, path.length) == path) {
            return "active"
        } else {
            return ""
        }
    };

}]);

