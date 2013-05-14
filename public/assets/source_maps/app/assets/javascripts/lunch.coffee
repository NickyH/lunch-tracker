window.app =
  map: null
  markers: []
  tags: []
  selected_address: null
  ready: ->
    app.token = $('#auth_token').data('auth-token')
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
    app.selected_address = null

  select_tag: (selected_tag) ->
    tag = $(selected_tag).attr('id')
    console.log(tag)
    app.tags.push tag
    console.log(app.tags)

  create_restaurant:(e)->
    if app.selected_address == null
      $('#address_not_selected').removeClass('hide')
    else
      name = $('#name').val()
      address = app.selected_address
      tags = $('#taglist').text()
      data = {address: address, name:name, tags: tags}
      settings =
        dataType: 'script'
        method: 'POST'
        data: data
        url: "/restaurants"
      $.ajax(settings)
      app.cancel_rest_form()


  validate_address: ->
    console.log('validate')
    address = $('#approx_address').val()
    settings =
      dataType: 'script'
      type: 'get'
      url: "/restaurants/validate_address?query=#{address}"
    $.ajax(settings)

  select_address: ->
    console.log('select')
    app.selected_address = $('#valid_address').text()


$(document).ready(app.ready)
