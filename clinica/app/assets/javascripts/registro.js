$(function() {
        theTable = $("#latabla");
        $('[type="date"]').on("keyup change", function () {
          $.uiTableFilter(theTable, this.value);
        });
        document.getElementById('e').value = new Date().toISOString().substring(0, 10);
        $.uiTableFilter(theTable, document.getElementById('e').value);
      });
