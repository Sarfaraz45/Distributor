

//LoadRegion();
LoadHead();


function CheckDataLength() {
   // alert("hello");
    var field = document.getElementById("txttitle").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txttitle');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txttitle');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
    var field = document.getElementById("txtdusplay").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtdusplay');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtdusplay');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
    var field = document.getElementById("chkbase").value;
    if (field == "" || field == null) {
        var text = document.getElementById('chkbase');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('chkbase');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }



    var field = document.getElementById("txtbasemulti").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtbasemulti');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtbasemulti');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }




    var field = document.getElementById("ddlHead").value;
    if (field == "" || field == null || field == "0") {
        var text = document.getElementById('ddlHead');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('ddlHead');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

}
function LoadSaveToastr() {
    Command: toastr["success"]("Unit has been saved Successfully.")

    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": true,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": true,
        "onclick": null,
        "showDuration": 300,
        "hideDuration": 100,
        "timeOut": 5000,
        "extendedTimeOut": 1000,
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
}

function LoadUpdateToastr() {
    Command: toastr["info"]("Unit has been updated Successfully.")

    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": true,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": true,
        "onclick": null,
        "showDuration": 300,
        "hideDuration": 100,
        "timeOut": 5000,
        "extendedTimeOut": 1000,
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
}

function LoadDeleteToastr() {
    Command: toastr["error"]("Supplier has been deleted Successfully.")

    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": true,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": true,
        "onclick": null,
        "showDuration": 300,
        "hideDuration": 100,
        "timeOut": 5000,
        "extendedTimeOut": 1000,
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
}
       
//$(document).ready(function () {
//    $('#tablepaging').dataTable(
//                {
//                    responsive: true
//                });

//    $('.js-thead-colors a').on('click', function () {
//        var theadColor = $(this).attr("data-bg");
//        console.log(theadColor);
//        $('#tablepaging thead').removeClassPrefix('bg-').addClass(theadColor);
//    });

//    $('.js-tbody-colors a').on('click', function () {
//        var theadColor = $(this).attr("data-bg");
//        console.log(theadColor);
//        $('#tablepaging').removeClassPrefix('bg-').addClass(theadColor);
//    });

//});

function LoadHead() {
    $.ajax({
        type: "POST",
        url: "Unit.aspx/LoadHead",
        data: {},
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            var jsdata = JSON.parse(data.d);
            var rows = "";
            if ($('#ddlHead').select.length != 0) {

                $('#ddlHead').empty();
            }

            $.each(jsdata, function (key, value) {
                rows += "<option  value=" + value.ID + ">" + value.Name + "</option>";
            });

            $("#ddlHead").append(rows);
        },
        error: function (data) {
            alert("error found");
        }
    });

}

LoadRegion();

function LoadRegion() {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Unit.aspx/LoadRegion",
                dataType: "json",
                data: "{}",
                success: function (data) {
                    var jsdata = JSON.parse(data.d);
                    var ro = "";
                    document.getElementById('DivRegion').innerHTML = '';

                    if ($('#tablepaging').length != 0) {

                        $('#tablepaging').remove();
                    }

                    ro = "<table id='tablepaging' class='table table-hover' style='cursor: pointer;' ><thead><th>ID</th><th>Unit Title</th><th>Display Name</th></thead><tbody>";
                    $.each(jsdata, function (key, value) {
                        ro += "<tr><td   class='one'>" + value.UnitID + "</td><td  class='two'>" + value.UnitTitle + "</td>  <td  class='three'>" + value.DisplayName + "</td>  <td  style='display:none;' class='four'>" + value.UnitTypeID + "</td>  <td  style='display:none;'  class='five'>" + value.IsBase + "</td>  <td  style='display:none;'  class='six'>" + value.BaseMultiplier + "</td></tr>";

                    });
                    ro = ro + "</tbody></table>";

                    $("#DivRegion").append(ro);

                
                },
                error: function (result) {
                    alert(result);
                }


            });

        };


 function InsertRegion() {
            var base = 0;
            if (document.getElementById("chkbase").checked == true)
            { base = 1; }
            else
            { base = 0; }


            var ddl = document.getElementById("ddlHead").value;

            var UserID = localStorage.getItem("UserID");
            var dataToSend = JSON.stringify({ 'UnitTitle': $('#txttitle').val(), 'DisplayName': $('#txtdusplay').val(), 'UnitTypeID': ddl, 'IsBase': base, 'BaseMultiplier': $('#txtbasemulti').val(), 'UserID': UserID });
            var results = $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Unit.aspx/InsertRegion",
                dataType: "json",
                data: dataToSend,
                //data: "{'RegionName':'" + $('#txtunittype').val() + "'}",                
                async: false,
                success: function (data) {
                    var obj = data.d;
                    if (obj == 'true') {
                        LoadRegion();
                        Clear();
                        LoadSaveToastr();

                    }

                },
                error: function (result) {
                    alert(result);
                }
            });

            return results;

        }











 function UpdateRegion() {



            var base = 0;
            if (document.getElementById("chkbase").checked == true)
            { base = 1; }
            else
            { base = 0; }


            var ddl = document.getElementById("ddlHead").value;


            //alert($('#ContentPlaceHolder1_hdnid').val());
            var dataToSend = JSON.stringify({ 'UnitID': document.getElementById("lblID").innerHTML, 'UnitTitle': $('#txttitle').val(), 'DisplayName': $('#txtdusplay').val(), 'UnitTypeID': ddl, 'IsBase': base, 'BaseMultiplier': $('#txtbasemulti').val() });
           // alert(dataToSend);
            var results = $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Unit.aspx/UpdateRegion",
                dataType: "json",
                data: dataToSend,
//                async: false,
                success: function (data) {
                    var obj = data.d;
                    if (obj == 'true') {
                        LoadRegion();
                        Clear();
                        LoadSaveToastr();

                    }

                },
                error: function (result) {
                    alert(result);
                }
            });

            return results;

        }


        function DeleteRegion() {
   
    
            //  alert($('#ContentPlaceHolder1_hdnid').val());
            var UserID = localStorage.getItem("UserID");
            var dataToSend = JSON.stringify({ 'UnitID': document.getElementById("lblID").innerHTML, 'UserID': UserID });
            //alert(dataToSend);
            var results = $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Unit.aspx/DeleteRegion",
                dataType: "json",
                data: dataToSend,
                async: false,
                success: function (data) {
                    var obj = data.d;
                    
                                        if (obj == 'true') {

                                            LoadRegion();
                                            Clear();
                                            LoadDeleteToastr();
                                    CheckDataLength();


                                        }


                },
                error: function (result) {
                    alert(result);
                }
            });

            return results;

        }

     


function SaveData() {
      var field = document.getElementById("txttitle").value;
    if (field == "" || field == null) {
     return false;        
    }
   
    var field = document.getElementById("txtdusplay").value;
    if (field == "" || field == null) {
        return false;
    }
  
    var field = document.getElementById("chkbase").value;
    if (field == "" || field == null) {
        return false;
    }
   



    var field = document.getElementById("txtbasemulti").value;
    if (field == "" || field == null) {
       return false;
    }
   var field = document.getElementById("ddlHead").value;
   if (field == "" || field == null || field == "0") {
       return false;
   }



    if ($("#btnSave").text() == "Save") {

        InsertRegion();
        CheckDataLength();
    }
    else if ($("#btnSave").text() == "Update") {
        UpdateRegion();
        CheckDataLength();
    }
}
 function Clear() {
            $('#ContentPlaceHolder1_hdnid').val('');
            $('#txttitle').val('');
            $('#txtdusplay').val('');
            $('#ddlHead').val('');
            $('#base').val('');
            $('#txtbasemulti').val('');
            CheckDataLength();
            $("#btnSave").text("Save");
            
        }



 $("#tablepaging tbody tr").live('click', function () {
//            document.getElementById("<%=hdnid.ClientID%>").value = $(this).closest('tr').children('td.one').text();
            document.getElementById("lblID").innerHTML = $(this).closest('tr').children('td.one').text();
            document.getElementById("txttitle").value = $(this).closest('tr').children('td.two').text();
            document.getElementById("txtdusplay").value = $(this).closest('tr').children('td.three').text();
            document.getElementById("ddlHead").value = $(this).closest('tr').children('td.four').text();
            document.getElementById("chkbase").value = $(this).closest('tr').children('td.five').text();
            document.getElementById("txtbasemulti").value = $(this).closest('tr').children('td.six').text();
             $("#btnSave").text("Update");
    CheckDataLength();
    });