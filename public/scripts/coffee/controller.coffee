angular.module 'app'

.controller 'MainController', ($scope) ->
  $scope.entries = []

  $scope.submitChoice = ->
    $scope.entries.push entry: $scope.entry, active: true
    $scope.entry = ''

  $scope.reset = ->
    $scope.entries = []
    $scope.finalChoice = ''
    $scope.selectedChoices = []

  $scope.status =
    isOpen: false

  $scope.emptySet = false
  $scope.choose = ->
    $scope.selectedChoices =
      _.chain $scope.entries
        .map (val) ->
          if val.active
            val.entry
        .compact()
        .value()
    num = Math.floor Math.random() * $scope.selectedChoices.length
    if $scope.selectedChoices.length > 0
      $scope.finalChoice = $scope.selectedChoices[num]
      $scope.emptySet = false
    else
      $scope.emptySet = true
