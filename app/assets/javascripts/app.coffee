jewelsStore = angular.module('jewelsStore', ['ngResource', 'templates','ui.router'])
jewelsStore.config( ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state('home',
    url: '/'
    views:
      '':
        templateUrl: 'home/home.html'
      'jewels@home':
        templateUrl: 'jewels/jewels.html'
  )
  $stateProvider.state("jewels" ,
    url: "/jewels"
    templateUrl: 'jewels/jewels.html'
    controller: 'jewelsCtrl'
    resolve:
      jewelsResource: 'jewelsResource'
      jewels: (jewelsResource) ->
        return jewelsResource.query().$promise
  )
  $urlRouterProvider.otherwise '/'
)
