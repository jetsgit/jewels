jewelsStore = angular.module('jewelsStore', ['ui.router', 'templates','ngResource'])
jewelsStore.config([ '$stateProvider','$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'
  $stateProvider
    .state('home',
      url: '/'
      controller: 'MainCtrl'
      views:
        '': template: './home/home.html',
        'jewels@home':
          templateUrl: './jewels/jewels.html'
          resolve:
            jewelsResource: 'jewelsResource'
            jewels: (jewelsResource) ->
              return jewelsResource.query().$promise
          controller: 'jewelsCtrl'
    )
])

# jewelsStore.controller('MainCtrl',[
#   '$scope', 'jewels', ($scope, jewels) ->
#     $scope.test = 'Hello world'
# ])




