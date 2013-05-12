window.app =
  map: null
  markers: []
  ready: ->
    app.token = $('#auth_token').data('auth-token')
    $('#form').on('click', 'a[data-clear-form]', app.clear_form)
    $('body').on('keyup', '#search', app.filter_restaurants)

  filter_restaurants: (e) ->
    query = $('#search').val()
    if query.length == 0
      settings =
        dataType: 'script'
        type: 'get'
        url: "/restaurants"
      $.ajax(settings)
    else
    settings =
      dataType: 'script'
      type: 'get'
      url: "/restaurants/search?query=#{query}"
    $.ajax(settings)

  display_map: (lat, lng, zoom) ->
    mapOptions =
      center: new google.maps.LatLng(lat, lng)
      zoom: zoom
      mapTypeId: google.maps.MapTypeId.ROADMAP
    canvas = $('#map_canvas')[0];
    app.map = new google.maps.Map(canvas, mapOptions);
  add_marker: (lat, lng, title) ->
    latlng = new google.maps.LatLng(lat, lng);
    marker = new google.maps.Marker({position: latlng, map: app.map, title: title});
    app.markers.push(marker);
  clear_markers: ->
    marker.setMap(null) for marker in app.markers
    app.markers = []

  cancel_login_form: ->
    $('#drop').removeClass('open').attr("style", "")
    $('#email').val("")
    $('#password').val("")

  cancel_rest_form: ->
    $('#rest_form').empty()

  add_tags: ->
    tags = $('#tags').val()
    settings =
      dataType: 'script'
      method: 'POST'
      url: "/tags?tags=#{tags}"
    $.ajax(settings)

$(document).ready(app.ready)
