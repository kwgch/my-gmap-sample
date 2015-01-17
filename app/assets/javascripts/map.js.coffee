@setMarkers = (json) ->
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    markers = handler.addMarkers(json)
    handler.bounds.extendWith markers
    handler.fitMapToBounds()
    return