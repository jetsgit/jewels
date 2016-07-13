angular.module('jewelsStore').controller('MainCtrl',[
  '$scope', '$state','Restangular', ($scope, $state, Restangular) ->
    $scope.$state = $state
    $scope.test = 'Hello world'
])
