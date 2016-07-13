angular.module('jewelsStore')
  .factory('JewelsResource', ['Restangular', (Restangular) ->
    getAll: ->
      Restangular.all('jewels').getList().$object
    getOne:  (jewelsId) ->
      Restangular.one('jewels', jewelsId).get().$object
  ])

  # .factory('jewelsResource', ['$resource', ($resource) ->
  #   return $resource '/api/jewels/:jewelId',
  #     jewelid: '@id'
  #     format: 'json'
  # ])


