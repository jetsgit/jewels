angular.module('jewelsStore').controller('MainCtrl',[
  '$scope', 'jewels', ($scope, jewels) ->
    $scope.test = 'Hello world'
])
