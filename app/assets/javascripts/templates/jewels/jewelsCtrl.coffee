angular.module('jewelsStore')
  .controller('JewelsCtrl', [ "JewelsResource", 'Restangular', '$scope', (JewelsResource, Restangular, $scope) ->
    @jewels = JewelsResource.getAll()
    @review = {}
    @addReview = (jewel) ->
      jewel.reviews = JewelsResource.reviewRestangular(jewel)
      jewel.reviews.post('',{review: @review})
      jewel.reviews.push(@review)
      @review = {}
    return
  ])
