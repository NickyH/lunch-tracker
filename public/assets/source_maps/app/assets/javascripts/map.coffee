window.map =
  map: null
  markers: []

  display_map: (lat, long, zoom) ->
    mapOptions =
      center: new google.maps.LatLng(lat, long)
      zoom: zoom
      mapTypeId: google.maps.MapTypeId.ROADMAP
    canvas = $('#map_canvas')[0];
    map.map = new google.maps.Map(canvas, mapOptions);

  add_marker: (lat, long, title) ->
    latlng = new google.maps.LatLng(lat, long);
    marker = new google.maps.Marker({position: latlng, map: map.map, title: title});
    map.markers.push(marker);

$(document).ready(map.ready)
