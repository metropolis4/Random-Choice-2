angular.module 'app'

.controller 'MainController', ($scope) ->
  $scope.entries = []

  $scope.submitChoice = ->
    $scope.entries.push entry: $scope.entry, active: true
    $scope.entry = ''

  $scope.choose = ->
    $scope.selectedChoices =
      _.chain $scope.entries
        .map (val) ->
          if val.active
            val.entry
        .compact()
        .value()
    num = Math.floor Math.random() * $scope.selectedChoices.length
    $scope.finalChoice = $scope.selectedChoices[num]
