shelterService.factory 'nearestShelters', [ '$resource',
  ($resource) ->
    (params) ->
      $resource 'http://api.huaxianweiyi.com:9000', {callback: 'JSON_CALLBACK'}, {
        jsonp_query: {
          method: 'JSONP',
          params: {
            x: params.x,
            y: params.y
          }
        }
      }
]
