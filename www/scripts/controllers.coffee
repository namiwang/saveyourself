app.controller 'mainCtrl', [
  '$scope', 'nearestShelters',
  ($scope, nearestShelters) ->
    window.SCOPE = $scope

    navigator.geolocation.getCurrentPosition(
      (position) ->
        $scope.currentLocation = position
      , ->
        return 
      , {enableHighAccuracy: true }
    )

    # $scope.currentLocation = currentLocation.query()
    $scope.nearestShelters = nearestShelters({x: 31.2268098, y: 121.5359274}).query_jsonp()
    # $scope.nearestShelters = nearestShelters.jsonp_query().$promise
    # TODO figure out what's $promise and use it
]
