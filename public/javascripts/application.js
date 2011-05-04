// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var map, markers;
markers = [];
function initialize() {
  var myLatlng = new google.maps.LatLng(-37.8131869,144.9629796);
  var myOptions = {
    zoom: 14,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
}

function loadScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.google.com/maps/api/js?sensor=false&callback=initialize";
  document.body.appendChild(script);
}

window.onload = loadScript;