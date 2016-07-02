angular.module('jewelsStore').controller('ReviewController', [ '$scope', '$routeParams', '$resource', '$location', 'flash', ($scope, $routeParams, $resource, $location, flash) ->
    @review = {}
    @addReview = (product) ->
      @review.createdOn = Date.now()
      product.reviews.push @review
      @review = {}
])
