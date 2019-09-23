$(document).on('ready pjax:success', function() {

  // initial value
  if ($('#animal_monthly').length) {
    if ($('#animal_monthly').val() == "") {
      $('#animal_monthly').val("0,00");
    }
  }

  $("td.monthly_field ").each(function(){
    var after_point = $(this).text().split(".")[1];

    if (after_point) {
      if (after_point.length < 2) {
        $(this).text($(this).text() + '0');
        $(this).mask('#.##0,00', { reverse: true });
      };
    };

  });


  $("#animal_monthly").each(function(){
    var after_point = $(this).val().split(".")[1];

    if (after_point) {
     if (after_point.length < 2) {
       $(this).val($(this).val() + '0');
     };
    };
  });


  $('#animal_monthly').mask("#.##0,00", {
    reverse:true,
    onKeyPress: function(v, event, currentField, options) {
      // remove previously added stuff at start of string
      v = v.replace(/^0*,?0*/, '');

      // add stuff as needed
      if (v.length == 0 ) {
          v = "0,00";
      }
      else if (v.length == 1 ) {
          v = "0,0" + v;
      }
      else if (v.length == 2 ) {
          v = "0," + v;
      }
      $(currentField).val(v);

    }
  });


  $("button[name = _save]").click(function() {
    //

    // clear field product_offer
    if ($("#animal_monthly").length) {
      if ($("#animal_monthly").val() == "0,00") {
        $("#animal_monthly").val('');
      }else {
        if ($("#product_product_offer").val() != "")  {
          $("#animal_monthly").val($("#animal_monthly").val().replace(/\./g,''));
          $("#animal_monthly").val($("#animal_monthly").val().replace(",", "."));
        };
      };

    };

  });


});
