angular.module('jewelsStore')
  .controller('JewelsCtrl', [
    '$scope', 'jewelsResource', ($scope, jewelsResource) ->
      this.jewels = jewelsResource.query()
      console.log $scope.jewels
      # jewel = Jewel.get id: $scope.id, ->
      #   console.log jewels
      # jewels = Jewel.query ->
      #   console.log $scope.jewels
  ])
