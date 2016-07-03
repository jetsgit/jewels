angular.module('jewelsStore')
  .controller('JewelsCtrl', [
    '$scope', 'jewelsResource', ($scope, jewelsResource) ->
      this.jewels = jewelsResource.query()
      # jewel = Jewel.get id: $scope.id, ->
      #   console.log jewels
      # jewels = Jewel.query ->
      #   console.log $scope.jewels
  ])
