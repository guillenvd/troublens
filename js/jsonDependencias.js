function JsonDependencias(){
        var x="";
       var req = $.ajax({
                    type: "POST",
                    dataType: "json",
                    timeout : 10000,
                    beforeSend: function() { },
                    url: "http://localhost/troublens-web/php/dependencias.php", 
                    data: x,
                    success: function(data) {
                                var output = $('#Layer1');
                                 $.each(data, function(i,item){
                    var landmark ='<section id="directorio" styl="Border">'+
                       '<div onclick="initialize('+item.latitud+','+item.longitud+',\''+item.nombre+'\');">'+
                            '<img src="img/directorio/bomberios1.png" class="logo">'+
                            '<h1>'+item.nombre+'</h1>'+
                            '<p class="direc">Dirección: '+item.direccion+'<br>Telefono: '+item.telefono+'<br> Correo: '+item.correo+'</p>'+
                        '</div>'+
                   ' </section>'
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