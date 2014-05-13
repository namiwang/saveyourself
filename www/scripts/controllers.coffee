app.controller 'mainCtrl', [
  '$scope', 'nearestShelters',
  ($scope, nearestShelters) ->
    $scope.nearestShelters = nearestShelters({x: 31.2268098, y: 121.5359274}).jsonp_query()
    # $scope.nearestShelters = nearestShelters.jsonp_query().$promise
    # TODO figure out what's $promise and use it
]
