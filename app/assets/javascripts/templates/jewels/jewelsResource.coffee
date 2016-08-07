angular.module('jewelsStore')
  .factory('JewelsResource', ['Restangular', (Restangular) ->
    getAll: ->
      Restangular.all('jewels').getList().$object
    getOne: (jewelId) ->
      Restangular.one('jewels', jewelId).get().$object
    reviewRestangular: (jewel) ->
      Restangular.restangularizeElement(jewel, jewel.reviews, 'reviews')
  ])
