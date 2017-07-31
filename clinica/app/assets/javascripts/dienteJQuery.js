$(document).on("ready", function(){

  var piezas = $("div #contenidoOculto").data("dientes");
  $(".diente img").each(function(index, elemento){
    var numeroID = $(elemento).attr("id");
    if(eval("piezas.d"+numeroID) == null || eval("piezas.d"+numeroID) == false){
      $(elemento).attr("src", "/Images/diente"+numeroID+".jpg");
      $.data(elemento,"seleccionado","si");
    }else if(eval("piezas.d"+numeroID) == true){
      $(elemento).attr("src", "/Images/"+"S"+"diente"+numeroID+".jpg");
      $.data(elemento,"seleccionado","no")
    }
  });

  $('.pieza').on("click", function(){
    var id = $(this).attr("id");
    if($.data(this,"seleccionado")== "no"){
      $(this).attr("src", "/Images/diente"+id+".jpg");
      $.data(this,"seleccionado","si");
      $("#agenda_d"+id).attr("value", "false");
    }else{
      $(this).attr("src", "/Images/"+"S"+"diente"+id+".jpg");
      $.data(this,"seleccionado","no");
      $("#agenda_d"+id).attr("value", "true");
    }
  })
})
