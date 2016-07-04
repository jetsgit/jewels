angular.module('jewelsStore').controller('GalleryCtrl', ['$scope', ($scope) ->
  this.imageIndex = 0
  this.setCurrent = (imageNumber) ->
    this.imageIndex = imageNumber || 0
])
