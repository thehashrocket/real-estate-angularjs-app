'use strict';

angular.module('realEstateApp').controller('MainController', ['$scope', '$routeParams', '$location', function($scope, $routeParams, $location) {

    $scope.init = function() {
        $scope.result = 'hey there'
    }



    var serverErrorHandler = function() {
        alert("There was a server error, please reload the page and try again.")
    }

    $scope.square = function(x) {
        return x * x
    }

    $scope.getClass = function(path) {
        if ($location.path().substr(0, path.length) == path) {
            return "active"
        } else {
            return ""
        }
    }

}])

