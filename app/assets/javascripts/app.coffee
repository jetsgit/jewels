jewelsStore = angular.module('jewelsStore', ['ngResource', 'templates','ui.router'])
jewelsStore.config( ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state('home',
    url: '/'
    views:
      '':
        templateUrl: 'home/home.html'
      'jewels@home':
        templateUrl: 'jewels/jewels.html'
        # resolve:
        #   jewelsResource: 'jewelsResource'
        #   jewels: (jewelsResource) ->
        #     return jewelsResource.query().$promise
        # controller: 'jewelsCtrl'
        
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

# jewelsStore.controller('MainCtrl',[
#   '$scope', 'jewels', ($scope, jewels) ->
#     $scope.test = 'Hello world'
# ])




