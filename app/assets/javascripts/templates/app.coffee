jewelsStore = angular.module('jewelsStore', ['restangular', 'templates','ui.router', 'ng-rails-csrf'])
 
jewelsStore.config(['RestangularProvider', '$stateProvider', '$urlRouterProvider', '$locationProvider', (RestangularProvider, $stateProvider, $urlRouterProvider, $locationProvider)->
  RestangularProvider.setBaseUrl '/api'
  $stateProvider.state('home',
    url: '/'
    views:
      '':
        templateUrl: 'home/home.html'
        controller: 'MainCtrl'
      'gallery@home':
        templateUrl: 'gallery/gallery.html'
        controller: 'JewelsCtrl'
        resolve:
          jewels: (JewelsResource) ->
            JewelsResource.getAll().$object
      'reviewsForm@home':
        templateUrl: 'reviews/reviewsForm.html'
        controller: 'JewelsCtrl'
  )
  $stateProvider.state("jewels",
    url: "/jewels"
    templateUrl: 'jewels/jewels.html'
    controller: 'JewelsCtrl'
    resolve:
      jewels: (JewelsResource) ->
        return JewelsResource.getAll()
  )
  $locationProvider.html5Mode(true)
  $urlRouterProvider.otherwise '/'
])
