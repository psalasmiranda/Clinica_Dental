$(document).on("ready", function(){

  var especialidades = $("div #2").data("usuarioeditar");
  $(".list-left ul li").each(function(index, elemento){
      var numeroID = $(elemento).text();
      if(eval("especialidades."+numeroID) == true){
        $(elemento).trigger("click");
      }
  });
  $('.move-right').trigger("click");


})
