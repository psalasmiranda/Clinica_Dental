$(function(){
    $('[type="date"]').prop('min', function(){
      return new Date().toJSON().split('T')[0];
  });
  //$('[type="date"]').prop('max', function(){
    //var currentdate = new Date();
  //currentdate.setDate(currentdate.getDate() + 7);
  //var tomorrow = currentdate.toJSON().slice(0,10);
  //return tomorrow;
//});
//$('[type="date"]').on('change', function() {
  //alert("I am an alert box!" + $('[type="date"]').val());
//      $('#reserva').show();
//  });

});
