angular.module('jewelsStore')
  .factory('JewelsResource', ['Restangular', (Restangular) ->
      getAll: ->
        Restangular.all('jewels').getList()
      getOne:  (jewelsId) ->
        Restangular.one('jewels', jewelsId).get()
  ])

  # .factory('jewelsResource', ['$resource', ($resource) ->
  #   return $resource '/api/jewels/:jewelId',
  #     jewelid: '@id'
  #     format: 'json'
  # ])


