angular.module('jewelsStore')
  .controller('JewelsCtrl', [ "JewelsResource", (JewelsResource) ->
    this.jewels = JewelsResource.getAll('jewels').$object
    console.log this.jewels
  ])
