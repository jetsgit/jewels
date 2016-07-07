jewelsStore = angular.module('jewelsStore', ['templates','ui.router', 'ng-rails-csrf', 'restangular'])
jewelsStore.config(['RestangularProvider', '$stateProvider', '$urlRouterProvider', '$locationProvider', (RestangularProvider, $stateProvider, $urlRouterProvider, $locationProvider) -> #$locationProvider here could create problems
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
            # return Jewels.getAll()
            return Jewels.getList().$object
  )
  $stateProvider.state("jewels",
    url: "/jewels"
    templateUrl: 'jewels/jewels.html'
    controller: 'JewelsCtrl'
    resolve:
      jewels: (Jewels) ->
        # return Jewels.getAll()
        return Jewels.getList().$object
  )
  $locationProvider.html5Mode(true)  #this could create problems
  $urlRouterProvider.otherwise '/'
])
