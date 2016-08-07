angular.module('jewelsStore')
  .controller('JewelsCtrl', [ "JewelsResource", 'Restangular', '$scope', (JewelsResource, Restangular, $scope) ->
    this.jewels = JewelsResource.getAll()
    this.review = {}
    this.addReview = (jewel) ->
      jewel.reviews = JewelsResource.reviewRestangular(jewel)
      jewel.reviews.post('',{review: this.review})
      jewel.reviews.push(this.review)
      this.review = {}
    return
  ])
