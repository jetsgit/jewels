angular.module('jewelsStore')
  .controller('JewelsCtrl', [ 'Jewels', (Jewels) -> 
    # Jewels.getAll('jewels').then( (jewels) ->
    #   $scope.jewels = jewels
    $scope.jewels = Jewels.getList().$object

     # )
  ])
