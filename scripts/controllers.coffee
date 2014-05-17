app.controller 'mainCtrl', [
  '$scope', 'nearestShelters',
  ($scope, nearestShelters) ->
    window.SCOPE = $scope

    navigator.geolocation.getCurrentPosition(
      (position) ->
        $scope.nearestShelters = nearestShelters({longitude: position.coords.longitude, latitude: position.coords.latitude}).query_jsonp()
      , ->
        return 
      # , {enableHighAccuracy: true}
    )

    # $scope.currentLocation = currentLocation.query()
    # $scope.nearestShelters = nearestShelters.jsonp_query().$promise
    # TODO figure out what's $promise and use it
]
