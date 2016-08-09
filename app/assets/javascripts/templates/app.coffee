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
      # 'panelTabs@home':
      #   templateUrl: 'panelTabs/panelTabs.html'
      #   controller: 'PanelCtrl'
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

jewelsStore.directive('reviewsForm', ->
  restrict: 'E'
  templateUrl: 'reviews/reviewsForm.html'
  controller: 'JewelsCtrl'
)
jewelsStore.directive('jewelsDescription', ->
  restrict: 'E'
  templateUrl: 'jewels/jewelsDescription.html'
)
jewelsStore.directive('jewelsSpecs', ->
  restrict: 'E'
  templateUrl: 'jewels/jewelsSpecs.html'
)
jewelsStore.directive('panelTabs', ->
  restrict: 'E'
  templateUrl: 'panelTabs/panelTabs.html'
  controller: ->
    this.tab = 1
    this.selectTab = (setTab) ->
      this.tab = setTab
    this.isSelected = (checkTab) ->
      this.tab == checkTab
    return
  controllerAs: 'panel'
)
