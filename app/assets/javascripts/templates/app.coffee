jewelsStore = angular.module('jewelsStore', ['ngResource','restangular', 'templates','ui.router', 'ng-rails-csrf'])
 
jewelsStore.config(['RestangularProvider', '$stateProvider', '$urlRouterProvider', '$locationProvider', (RestangularProvider, $stateProvider, $urlRouterProvider, $locationProvider)->
  RestangularProvider.setBaseUrl '/api'
  $stateProvider.state('home',
    url: '/'
    views:
      '':
        templateUrl: 'home/home.html'
        controller: 'MainCtrl'
      # 'jewels@home':
      #   templateUrl: 'jewels/jewels.html'
      'gallery@home':
        templateUrl: 'gallery/gallery.html'
        controller: 'JewelsCtrl'
        resolve:
          jewels: (Jewels) ->
            return Jewels.getAll('jewels')
  )
  $stateProvider.state("jewels",
    url: "/jewels"
    templateUrl: 'jewels/jewels.html'
    controller: 'JewelsCtrl'
    resolve:
      jewels: (Jewels) ->
        return Jewels.getAll('jewels')
  )
  $locationProvider.html5Mode(true)
  $urlRouterProvider.otherwise '/'
])
