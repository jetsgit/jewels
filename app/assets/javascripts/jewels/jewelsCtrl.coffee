angular.module('jewelsStore')
  .controller('JewelsCtrl', [
    '$scope', 'jewelsResource', ($scope, jewelsResource) ->
      # jewel = Jewel.get id: $scope.id, ->
      #   console.log jewels
      # jewels = Jewel.query ->
      #   console.log $scope.jewels
      this.jewels = jewelsResource.query()
      console.log $scope.jewels
  ])
