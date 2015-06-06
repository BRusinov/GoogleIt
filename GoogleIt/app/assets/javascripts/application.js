// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require cocoon

var map;
var marker;
var infowindow = new google.maps.InfoWindow({
	content: "default"
});
var btn1=document.getElementById('btn1');
var file_no=1;
var address = "";
function initialize() {
	var mapCanvas = document.getElementById('map-canvas');
	var Sofia = new google.maps.LatLng(42.7000, 23.3333);
	var mapOptions = {
	  center: Sofia,
	  zoom: 15,
	  mapTypeId: google.maps.MapTypeId.ROADMAP
	}

	map = new google.maps.Map(mapCanvas, mapOptions)
	google.maps.event.addListener(map, 'click', function(event) {
		infowindow.close();
		addMarker(event.latLng);
		google.maps.event.addListener(marker, 'click', function() {
			//alert(marker.getPosition().lat()+','+marker.getPosition().lng());
			getReverseGeocodingData(marker.getPosition().lat(), marker.getPosition().lng())
			infowindow.setContent(address);
			infowindow.open(map,marker);
		});
	});
}
function getReverseGeocodingData(lat, lng) {
	var latlng = new google.maps.LatLng(lat, lng);
	// This is making the Geocode request
	var geocoder = new google.maps.Geocoder();
	geocoder.geocode({ 'latLng': latlng }, function (results, status) {
		if (status !== google.maps.GeocoderStatus.OK) {
			alert(status);
		}
		// This is checking to see if the Geoeode Status is OK before proceeding
		if (status == google.maps.GeocoderStatus.OK) {
			//console.log(results);
			address = (results[0].formatted_address);
			document.getElementById('map_address').value = address;
		}
	});
}

function addMarker(location) {
	if ( marker ) {
		marker.setPosition(location);
	} else {
		marker = new google.maps.Marker({
			position: location,
			//title: getReverseGeocodingData(42.7000, 23.3333),
			map: map
		});
	}
	//document.getElementById('latitude').value = marker.lat();
	//document.getElementById('longitude').value = marker.lng();
	getReverseGeocodingData(marker.getPosition().lat(), marker.getPosition().lng());
	marker.setVisible(true);
}
function clearMarker(){
	infowindow.close();
	marker.setVisible(false);
}
function addFile(){
	if(file_no<5){
		document.getElementById('files').innerHTML += '<input type="file" name="files">'
		file_no++;
	}else{
		alert("maximum number of files: 5");
	}
}
google.maps.event.addDomListener(window, 'load', initialize);
