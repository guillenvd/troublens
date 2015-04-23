function initialize() {
  alert();
  var mapOptions = {
    zoom: 15,
    center: new google.maps.LatLng(31.8058553,-116.5909399)
  }
  var map = new google.maps.Map(document.getElementById('googleMap'),
                                mapOptions);

  var image = 'img/favicon-55.png';
  var myLatLng = new google.maps.LatLng(31.8058553,-116.5909399);
  var beachMarker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      icon: image
  });

  var infowindow = new google.maps.InfoWindow({ content:"<center><b><ins>INSTITUTO TECNOLÓGICO DE ENSENADA</ins></b><br> UNIVERIIDAD DE INGENERIA Y LICENCIATURA.<center   >" });
  google.maps.event.addListener(beachMarker, 'click', function(){ infowindow.open(map,beachMarker); });
}
google.maps.event.addDomListener(window, 'load', initialize);