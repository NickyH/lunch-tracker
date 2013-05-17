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
    canvas = $('#map_canvas')[0]
    app.map = new google.maps.Map(canvas, mapOptions)
  add_marker: (lat, long, title) ->
    latlng = new google.maps.LatLng(lat, long)
    marker = new google.maps.Marker({position: latlng, map: app.map, title: title})
    app.markers.push(marker)
  # add_user_marker: (lat, long) ->
  #   latlng = new google.maps.LatLng(lat, long)
  #   marker = new google.maps.Marker({position: latlng, map: app.map})
  #   marker.image = "http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png"
  #   app.markers.push(marker)
  #   console.log(app.markers)
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
      tags = app.tags
      data = {address: address, name:name, tags: tags}
      settings =
        dataType: 'script'
        method: 'POST'
        data: data
        url: "/restaurants"
      $.ajax(settings)
      $('#rest_form').empty()
      app.selected_address = null
      app.tags = []

  update_restaurant:(e)->
      name = $('#name').val()
      id = $('#restaurant_id').val()
      address = $('#show_address').val()
      tags = app.tags
      data = {address: address, name:name, tags: tags, id: id}
      settings =
        dataType: 'script'
        method: 'PUT'
        data: data
        url: "/restaurants/#{id}"
      $.ajax(settings)
      $('#rest_form').empty()
      app.selected_address = null
      app.tags = []

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

  show_reviews: (id) ->
    restaurant_id = id
    row_id = '#row' + id
    console.log(restaurant_id)
    settings =
      dataType: 'script'
      type: 'get'
      url: "/reviews/show/#{restaurant_id}"
    $.ajax(settings)

  new_review_form: (e) ->
    id = $(e).data('rest')
    console.log(id)
    settings =
      dataType: 'script'
      method: 'get'
      url: "/reviews/new/review/#{id}"
    $.ajax(settings)

  cancel_review_form: ->
    $('#review_form').empty()
    $('.row.reviews').slideUp().addClass('hide')
    $('.show_review_content').addClass('hide')
    $('.comment_link').addClass('hide')

  submit_review_form: (e) ->
    restaurant_id = $(e).next('#rev_rest_id').val()
    content = $(e).prev('#review_content').val()
    data = { restaurant_id: restaurant_id, content: content }
    settings =
      dataType: 'script'
      method: 'post'
      data: data
      url: "/reviews"
    $.ajax(settings)
    app.cancel_review_form()

  toggle_thumb: (e)->
    id = $(e).data('rest-hidden')
    console.log(id)
    settings =
      dataType: 'script'
      method: 'put'
      url: "/restaurants/toggle_thumb/#{id}"
    $.ajax(settings)

$(document).ready(app.ready)
