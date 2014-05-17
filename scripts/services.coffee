dataService.factory 'nearestShelters', [ '$resource',
  ($resource) ->
    (params) ->
      $resource 'http://api.huaxianweiyi.com:9000', {callback: 'JSON_CALLBACK'}, {
        query_jsonp: {
          method: 'JSONP',
          params: {
            longitude: params.longitude,
            latitude: params.latitude
          }
        }
      }
]
