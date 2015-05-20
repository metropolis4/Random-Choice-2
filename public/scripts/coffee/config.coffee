angular.module 'app'

  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: '/templates/main'

  .directive 'optionsList', ->
    restrict: 'E'
    templateUrl: 'templates/options-list'

  .directive 'winner' , ->
    restrict: 'E'
    templateUrl: 'templates/winner'
