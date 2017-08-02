
$(document).on("ready", function(){

  var piezas = $("div #contenidoOculto").data("dientes");
  $(".diente img.Spieza").each(function(index, elemento){
    var numeroID = $(elemento).attr("id");
    if(eval("piezas.d"+numeroID) == null || eval("piezas.d"+numeroID) == false){
      $(elemento).hide();
    }else if(eval("piezas.d"+numeroID) == true){
      $(elemento).show();
    }
  });
  $(".diente img.pieza").each(function(index, elemento){
    var numeroID = $(elemento).attr("id");
    if(eval("piezas.d"+numeroID) == null || eval("piezas.d"+numeroID) == false){
        $(elemento).show();
        //$.data(elemento,"seleccionado","si");
    }else if(eval("piezas.d"+numeroID) == true){
        $(elemento).hide();
        //$.data(elemento,"seleccionado","no");
    }
  });

  $('.pieza').on("click", function(){
    var numeroID = $(this).attr("id");
    $(this).next().show();
    $(this).hide();
    $("#agenda_d"+numeroID).attr("value", "true");
  });
  $('.Spieza').on("click", function(){
    var numeroID = $(this).attr("id");
    $(this).prev().show();
    $(this).hide();
    $("#agenda_d"+numeroID).attr("value", "false");
  });
  /*$('.pieza').on("click", function(){
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
  })*/
})
