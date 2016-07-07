angular.module('jewelsStore')
  .factory('Jewels', ['Restangular', (Restangular) ->
    return
      # RestangularProvider.setBaseUrl '/api'
      # getAll: Restangular.all('/api/jewels').getList()
      # getOne:  (jewelsId) ->
      #   return Restangular.one('jewels', jewelsId).get()
      Jewels.serice('jewels')
  ])
