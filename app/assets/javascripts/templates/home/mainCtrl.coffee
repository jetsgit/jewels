angular.module('jewelsStore').controller('MainCtrl',[
  '$scope', '$state', ($scope, $state) ->
    $scope.$state = $state
    $scope.test = 'Hello world'
])
