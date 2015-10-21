var App = App || {};
var map;
var geocoder;

function init() {
	geocoder = new google.maps.Geocoder();

	map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 37.758830, lng: -122.337745},
    zoom: 11
  });

  map.data.loadGeoJson('sf-oak-neighborhoods.json');

  map.data.addListener('mouseover', function(event) {
    document.getElementById('label').textContent =
    	event.feature.getProperty('NAME');
  });

	document.getElementById('address-submit').addEventListener('click', function() {
		geocodeAddress(geocoder, map);
	});
}

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('address').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      var point = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      document.getElementById('label').textContent =
      	"Sorry, couldn't find your neighborhood!"
    }
  });
}

App.init = function() {
  return init();
};