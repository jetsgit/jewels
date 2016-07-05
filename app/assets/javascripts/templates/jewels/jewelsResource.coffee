angular.module('jewelsStore')
  .factory('jewelsResource', ['$resource', ($resource) ->
    return $resource '/api/jewels/:jewelId',
      jewelid: '@id'
      format: 'json'
  ])
