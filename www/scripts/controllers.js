
app.controller('mainCtrl', [
  '$scope', 'nearestShelters', function($scope, nearestShelters) {
    return $scope.nearestShelters = nearestShelters({
      x: 31.2268098,
      y: 121.5359274
    }).jsonp_query();
  }
]);
