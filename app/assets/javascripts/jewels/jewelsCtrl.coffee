angular.module('jewelsStore')
  .controller('jewelsCtrl', [
    '$scope', 'jewelsResource', ($scope, jewelsResource) ->
      # jewel = Jewel.get id: $scope.id, ->
      #   console.log jewels
      # jewels = Jewel.query ->
      #   console.log $scope.jewels
      $scope.jewels = jewelsResource.query()
      console.log $scope.jewels
  ])
