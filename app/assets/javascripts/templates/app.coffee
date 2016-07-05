jewelsStore = angular.module('jewelsStore', ['ngResource', 'templates','ui.router'])
jewelsStore.config( ($stateProvider, $urlRouterProvider, $locationProvider) -> #$locationProvider here could create problems
  $stateProvider.state('home',
    url: '/'
    views:
      '':
        templateUrl: 'home/home.html'
        controller: 'MainCtrl'
      'jewels@home':
        templateUrl: 'jewels/jewels.html'
      'gallery@home':
        templateUrl: 'gallery/gallery.html'
        controller: 'JewelsCtrl'
        resolve:
          jewelsResource: 'jewelsResource'
          jewels: (jewelsResource) ->
            return jewelsResource.query().$promise
      # 'reviewsForm':
      #   templateUrl: 'reviews/reviewsForm.html'
        
  )
  $stateProvider.state("jewels" ,
    url: "/jewels"
    templateUrl: 'jewels/jewels.html'
    controller: 'JewelsCtrl'
    resolve:
      jewelsResource: 'jewelsResource'
      jewels: (jewelsResource) ->
        return jewelsResource.query().$promise
  )
  $locationProvider.html5Mode(true)  #this could create problems
  $urlRouterProvider.otherwise '/'
)
