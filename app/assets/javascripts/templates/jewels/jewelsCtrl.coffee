angular.module('jewelsStore')
  .controller('JewelsCtrl', [ "JewelsResource", (JewelsResource) ->
    this.jewels = JewelsResource.getAll()
  ])
