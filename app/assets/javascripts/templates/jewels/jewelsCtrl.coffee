angular.module('jewelsStore')
  .controller('JewelsCtrl', [ '$scope', 'Jewels', ($scope, Jewels) ->
    Jewels.getAll().then( (jewels) ->
      $scope.jewels = jewels
    )
  ])
