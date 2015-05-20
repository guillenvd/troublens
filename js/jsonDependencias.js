// This example adds a marker to indicate the position
// of Bondi Beach in Sydney, Australia
/*$( window ).resize(function() {
  if( $(window).width()==800){
  }
});
 */
 function getLocation() {
            navigator.geolocation.getCurrentPosition(foundLocation, noLocation);
            function foundLocation(position) {


   var lat = position.coords.latitude;
        var long = position.coords.longitude;
          initialize(lat,long,'Usted se encuentra aquí ahora.','favicon-55.png'); 
        }
    }

    function noLocation() {
        alert('Could not find location');
    }


function initialize(lat,lon,string,img) {
  var mapOptions = {
    zoom: 15,
    center: new google.maps.LatLng(lat,lon)
  }
  var map = new google.maps.Map(document.getElementById('googleMap'),
                                mapOptions);

  var image = 'img/directorio/'+img;
  
  var myLatLng = new google.maps.LatLng(lat,lon);
  var beachMarker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      icon: image
  });

  var infowindow = new google.maps.InfoWindow({ content:string });
  google.maps.event.addListener(beachMarker, 'click', function(){ infowindow.open(map,beachMarker); });
}
google.maps.event.addDomListener(window, 'load', initialize);
function JsonDependencias(){
    var loc = window.location;
    var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 1);
    var host = loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));

    var x="";
       var req = $.ajax({
                    type: "POST",
                    dataType: "json",
                    timeout : 10000,
                    beforeSend: function() { },
                    url: host+"php/dependencias.php", 
                    data: x,
                    success: function(data) {
                                var output = $('#Layer1');
                                 $.each(data, function(i,item){
                    var landmark ='<section id="directorio" styl="Border">'+
                       '<div onclick="initialize('+item.latitud+','+item.longitud+',\''+item.nombre+'\',\''+item.foto+'-55.png\');">'+
                            '<img src="img/directorio/'+item.foto+'.jpg" class="logo">'+
                            '<h1>'+item.nombre+'</h1>'+
                            '<p class="direc">Dirección:'+item.direccion+'<br>Telefono:'+item.telefono+'<br> Correo: '+item.correo+'</p>'+
                        '</div>'+
                        '<br>'+
                   ' </section>';
                                      output.append(landmark);
                                 });                           
                        getLocation();
                             }, 
                    error: function() {
                            //do something
                          }
    });
    req.success(function(){    });
    req.error(function(){      alert('dont run!'); });
}