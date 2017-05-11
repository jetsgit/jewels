do ->
  app = angular.module('products', [])
  app.directive('reviewsForm', ->
    restrict: 'E'
    templateUrl: 'reviews/reviewsForm.html'
    controller: 'JewelsCtrl'
  )
  app.directive('jewelsDescription', ->
    restrict: 'E'
    templateUrl: 'jewels/jewelsDescription.html'
  )
  app.directive('jewelsSpecs', ->
    restrict: 'E'
    templateUrl: 'jewels/jewelsSpecs.html'
  )
  app.directive('panelTabs', ->
    restrict: 'E'
    templateUrl: 'panelTabs/panelTabs.html'
    controller: ->
      @tab = 1
      @selectTab = (setTab) ->
        @tab = setTab
      @isSelected = (checkTab) ->
        @tab == checkTab
      return
    controllerAs: 'panel'
  )
  return
