'use strict';

angular.module('realEstateApp').controller('AdminController', ['$scope', '$routeParams', '$location', function($scope, $routeParams, $location) {

    $scope.init = function() {
        $scope.result = 'hey there'
    }

    var serverErrorHandler = function() {
        alert("There was a server error, please reload the page and try again.")
    }

    $scope.getClass = function(path) {
        if ($location.path().substr(0, path.length) == path) {
            return "active"
        } else {
            return ""
        }
    }

}])

