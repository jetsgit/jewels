jewelsStore = angular.module('jewelsStore', ['templates','ui.router'])
jewelsStore.config( ($stateProvider, $urlRouterProvider) ->
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
    ).state("jewels",
      url: "/jewels"
      resolve:
        jewelsResource: 'jewelsResource'
        jewels: (jewelsResource) ->
          return jewelsResource.query().$promise
    )
  $urlRouterProvider.otherwise '/'
)

# jewelsStore.controller('MainCtrl',[
#   '$scope', 'jewels', ($scope, jewels) ->
#     $scope.test = 'Hello world'
# ])




