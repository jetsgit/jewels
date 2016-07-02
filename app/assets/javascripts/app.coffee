jewelsStore = angular.module('jewelsStore', ['templates','ui.router'])
jewelsStore.config( ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'
  $stateProvider
    .state('home',
      url: '/'
      views:
        '': templateUrl: 'home/home.html',
        'jewels@home':
          templateUrl: 'jewels/jewels.html'
          resolve:
            jewelsResource: 'jewelsResource'
            jewels: (jewelsResource) ->
              return jewelsResource.query().$promise
          controller: 'jewelsCtrl'
    )
)

# jewelsStore.controller('MainCtrl',[
#   '$scope', 'jewels', ($scope, jewels) ->
#     $scope.test = 'Hello world'
# ])




