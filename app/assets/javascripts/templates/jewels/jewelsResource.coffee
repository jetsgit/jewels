angular.module('jewelsStore')
  .factory('Jewels', ['Restangular', (Restangular) ->
    return
      getAll: Restangular.all('jewels').getList()
      getOne:  (jewelsId) ->
        return Restangular.one('jewels', jewelsId).get()
  ])

  # .factory('jewelsResource', ['$resource', ($resource) ->
  #   return $resource '/api/jewels/:jewelId',
  #     jewelid: '@id'
  #     format: 'json'
  # ])


