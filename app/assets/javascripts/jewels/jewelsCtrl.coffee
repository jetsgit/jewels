angular.module('jewelsStore')
  .controller('jewelsCtrl', [
    '$scope', 'jewels', ($scope, jewels) ->
      # jewel = Jewel.get id: $scope.id, ->
      #   console.log jewels
      # jewels = Jewel.query ->
      #   console.log $scope.jewels
      console.log jewel
      $scope.jewels = jewels
  ])
