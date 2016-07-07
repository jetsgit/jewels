angular.module('jewelsStore')
  .controller('JewelsCtrl', [ 'Jewels','$scope' (Jewels, $scope) -> 
    this.jewels = Jewels.getAll()
  ])
  # .controller('JewelsCtrl', [
  #   '$scope', 'jewelsResource', ($scope, jewelsResource) ->
  #     this.jewels = jewelsResource.query()
  # ])
