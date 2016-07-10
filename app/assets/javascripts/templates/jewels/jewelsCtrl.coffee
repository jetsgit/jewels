angular.module('jewelsStore')
  .controller('JewelsCtrl', [ 'Jewels','$scope', (Jewels, $scope) ->
    this.jewels = Jewels.getAll('jewels')
  ])
