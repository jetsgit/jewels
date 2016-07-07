angular.module('jewelsStore')
  .factory('Jewels', ['Restangular', (Restangular) ->
    return
      # RestangularProvider.setBaseUrl '/api'
      getAll: Restangular.all('jewels').getList()
      getOne:  (jewelsId) ->
        return Restangular.one('jewels', jewelsId).get()
  ])
