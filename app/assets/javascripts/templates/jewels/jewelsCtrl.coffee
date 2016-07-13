angular.module('jewelsStore')
  .controller('JewelsCtrl', [ "JewelsResource", '$scope', (JewelsResource, $scope) ->
    this.jewels = JewelsResource.getAll()
    $scope.inside = "My own private scope!"
    return
  ])
