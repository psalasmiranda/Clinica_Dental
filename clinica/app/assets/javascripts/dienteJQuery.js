$(document).on("ready", function(){

  var piezas = $("div #contenidoOculto").data("dientes");
  $(".diente img").each(function(index, elemento){
    var numeroID = $(elemento).attr("id");
    if(eval("piezas.d"+numeroID) == null || eval("piezas.d"+numeroID) == false){
      $(elemento).attr("src", "/assets/diente"+numeroID+".jpg");
      $.data(elemento,"seleccionado","si");
    }else if(eval("piezas.d"+numeroID) == true){
      $(elemento).attr("src", "/assets/Sdiente"+numeroID+".jpg");
      $.data(elemento,"seleccionado","no")
    }
  });

  $('.pieza').on("click", function(){
    var id = $(this).attr("id");
    if($.data(this,"seleccionado")== "no"){
      $(this).attr("src", "/assets/diente"+id+".jpg");
      $.data(this,"seleccionado","si");
      $("#agenda_d"+id).attr("value", "false");
    }else{
      $(this).attr("src", "/assets/Sdiente"+id+".jpg");
      $.data(this,"seleccionado","no");
      $("#agenda_d"+id).attr("value", "true");
    }
  })
})
