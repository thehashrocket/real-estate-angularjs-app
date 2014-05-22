'use strict';

angular.module('realEstateApp').controller('PropertiesController', ['$scope', '$routeParams', '$location', function($scope, $routeParams, $location) {

    $scope.init = function() {
        $scope.result = 'hey there properties'
    }

    $scope.getClass = function(path) {
        if ($location.path().substr(0, path.length) == path) {
            return "active"
        } else {
            return ""
        }
    }

    $scope.square = function(x) {
        return x * x
    }

}])
