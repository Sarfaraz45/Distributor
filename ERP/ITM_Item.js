

//LoadRegion();
LoadHead();
LoadHead1();

function CheckDataLengthV2(a) {
    // alert("hello");
    var field = document.getElementById(a.id).value;
    if (field == "" || field == null) {
        var text = document.getElementById(a.id);
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById(a.id);
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
}

function CheckDataLength() {
   // alert("hello");
    var field = document.getElementById("txtitemname").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtitemname');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtitemname');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
    var field = document.getElementById("txtItemCode").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtItemCode');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtItemCode');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
//    var field = document.getElementById("txtbarcode").value;
//    if (field == "" || field == null) {
//        var text = document.getElementById('txtbarcode');
//        text.classList.remove('is-valid');
//        text.classList.add('is-invalid');
//    }
//    else {

//        var text = document.getElementById('txtbarcode');
//        text.classList.remove('is-invalid');
//        text.classList.add('is-valid');

//    }



//    var field = document.getElementById("txtDiscription").value;
//    if (field == "" || field == null) {
//        var text = document.getElementById('txtDiscription');
//        text.classList.remove('is-valid');
//        text.classList.add('is-invalid');
//    }
//    else {

//        var text = document.getElementById('txtDiscription');
//        text.classList.remove('is-invalid');
//        text.classList.add('is-valid');

//    }




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
    var field = document.getElementById("txtdistPer").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtdistPer');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtdistPer');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("txtTradePrice").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtTradePrice');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtTradePrice');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtRetailPrice").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtRetailPrice');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtRetailPrice');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("ddlHead1").value;
    if (field == "" || field == null || field == "0") {
        var text = document.getElementById('ddlHead1');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('ddlHead1');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

}


function LoadSaveToastr() {
    Command: toastr["success"]("Item has been saved Successfully.")

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
    Command: toastr["info"]("Item has been updated Successfully.")

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
    Command: toastr["error"]("Item has been deleted Successfully.")

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
       
$(document).ready(function () {
    $('#tablepaging').dataTable(
                {
                    responsive: true
                });

    $('.js-thead-colors a').on('click', function () {
        var theadColor = $(this).attr("data-bg");
        console.log(theadColor);
        $('#tablepaging thead').removeClassPrefix('bg-').addClass(theadColor);
    });

    $('.js-tbody-colors a').on('click', function () {
        var theadColor = $(this).attr("data-bg");
        console.log(theadColor);
        $('#tablepaging').removeClassPrefix('bg-').addClass(theadColor);
    });

});

function LoadHead() {
    $.ajax({
        type: "POST",
        url: "ITM_Item.aspx/LoadHead",
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

function LoadHead1() {
    $.ajax({
        type: "POST",
        url: "ITM_Item.aspx/LoadHead1",
        data: {},
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            var jsdata = JSON.parse(data.d);
            var rows = "";
            if ($('#ddlHead1').select.length != 0) {

                $('#ddlHead1').empty();
            }

            $.each(jsdata, function (key, value) {
                rows += "<option  value=" + value.ID + ">" + value.Name + "</option>";
            });

            $("#ddlHead1").append(rows);
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
        url: "ITM_Item.aspx/LoadRegion",
        dataType: "json",
        data: "{}",
        success: function (data) {
            var jsdata = JSON.parse(data.d);
            var ro = "";

            if ($('#tablepaging').length != 0) {

                $('#tablepaging').remove();
            }

            ro = "<table id='tablepaging' class='table table-striped table-hover no-head-border' style='cursor: pointer;' ><thead class='vd_bg-dark-blue vd_white'><th>ID</th><th>Item Name</th><th>Item Code</th></thead><tbody>";
            $.each(jsdata, function (key, value) {
                ro += "<tr><td   class='one'>" + value.ITEMID + "</td>   <td   class='two'>" + value.ITEMName + "</td>    <td   class='three'>" + value.ItemCode + "</td>    <td  style='display:none;' class='four'>" + value.BarCode + "</td>  <td  style='display:none;'  class='five'>" + value.Discription + "</td> <td   style='display:none;' class='six'>" + value.UnitTypeID + "</td><td   style='display:none;' class='seven'>" + value.DistPercentage + "</td> <td   style='display:none;' class='eight'>" + value.TradePrice + "</td> <td   style='display:none;' class='nine'>" + value.RetailPrice + "</td><td   style='display:none;' class='ten'>" + value.PackingTypeID + "</td><td   style='display:none;' class='eleven'>" + value.Wt + "</td>  </tr>";

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
//    alert("asd");
   var UserID = localStorage.getItem("UserID");
//    var txtitemname = document.getElementById('txtitemname').value;
//    var txtItemCode = document.getElementById('txtItemCode').value;
//    var txtbarcode = document.getElementById('txtbarcode').value;
//    var txtDiscription = document.getElementById('txtDiscription').value;
//    var txtdistPer = document.getElementById('txtdistPer').value;
//    var txtTradePrice = document.getElementById('txtTradePrice').value;
//    var txtdistPer = document.getElementById('txtdistPer').value;
//    var txtRetailPrice = document.getElementById('txtRetailPrice').value;
//    
   var ddl = document.getElementById("ddlHead").value;
   var ddlPacking = document.getElementById("ddlHead1").value;
   var txtWt = document.getElementById("txtWt").value;
    
    var UserID = localStorage.getItem("UserID");
    var dataToSend = JSON.stringify({ 'ITEMName': $('#txtitemname').val(), 'ItemCode': $('#txtItemCode').val(), 'BarCode': $('#txtbarcode').val(), 'Discription': $('#txtDiscription').val(), 'UserID': UserID, 'UnitTypeID': ddl, 'DistPerc': $('#txtdistPer').val(), 'TradePrice': $('#txtTradePrice').val(), 'RetailPrice': $('#txtRetailPrice').val(), 'PackingTypeID': ddlPacking, 'txtWt': txtWt });
    // alert(dataToSend);
    var results = $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "ITM_Item.aspx/InsertRegion",
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
    //alert("abc");
    var ddl = document.getElementById("ddlHead").value;
    var ddlPacking = document.getElementById("ddlHead1").value;

    var txtWt = document.getElementById("txtWt").value;
    var dataToSend = JSON.stringify({ 'ITEMID': document.getElementById("lblID").innerHTML, 'ITEMName': $('#txtitemname').val(), 'ItemCode': $('#txtItemCode').val(), 'BarCode': $('#txtbarcode').val(), 'Discription': $('#txtDiscription').val(), 'UnitTypeID': ddl, 'DistPerc': $('#txtdistPer').val(), 'TradePrice': $('#txtTradePrice').val(), 'RetailPrice': $('#txtRetailPrice').val(), 'PackingTypeID': ddlPacking, 'txtWt': txtWt });
  // alert(dataToSend);
    var results = $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "ITM_Item.aspx/UpdateRegion",
        dataType: "json",
        data: dataToSend,
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


function DeleteRegion() {
// var field = document.getElementById("txtitemname").value;
//    if (field == "" || field == null) {
//      return false;
//    }
// 
//    var field = document.getElementById("txtItemCode").value;
//    if (field == "" || field == null) {
//       return false;
//    }
 
//    var field = document.getElementById("txtbarcode").value;
//    if (field == "" || field == null) {
//       
//        return false;
//    }
//  



//    var field = document.getElementById("txtDiscription").value;
//    if (field == "" || field == null) {
//      return false;
//    }
// 




//    var field = document.getElementById("ddlHead").value;
//    if (field == "" || field == null || field == "0") {
//        return false;
//    }

//    var field = document.getElementById("txtdistPer").value;
//    if (field == "" || field == null) {
//        return false;
//    }
// 

//    var field = document.getElementById("txtTradePrice").value;
//    if (field == "" || field == null) {
//       return false;
//    }
//  

//    var field = document.getElementById("txtRetailPrice").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//   

//    var field = document.getElementById("ddlHead1").value;
//    if (field == "" || field == null || field == "0") {
//        return false;
//     
//    }




    //  alert($('#ContentPlaceHolder1_hdnid').val());
    var UserID = localStorage.getItem("UserID");
   // alert(document.getElementById("lblID").innerHTML);
    var dataToSend = JSON.stringify({ 'ITEMID': document.getElementById("lblID").innerHTML, 'UserID': UserID });
   //alert(dataToSend);
    var results = $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "ITM_Item.aspx/DeleteRegion",
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
    var field = document.getElementById("txtitemname").value;
    if (field == "" || field == null) {
        return false;
    }

    var field = document.getElementById("txtItemCode").value;
    if (field == "" || field == null) {
        return false;
    }

    var field = document.getElementById("txtbarcode").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtbarcode');
        return false;
    }




//    var field = document.getElementById("txtDiscription").value;
//    if (field == "" || field == null) {
//        return false;
//    }





    var field = document.getElementById("ddlHead").value;
    if (field == "" || field == null || field == "0") {
        return false;
    }

    var field = document.getElementById("txtdistPer").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("txtTradePrice").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("txtRetailPrice").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("ddlHead1").value;
    if (field == "" || field == null || field == "0") {

    }

   //alert("anc");
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
    $('#txtitemname').val('');
    $('#txtItemCode').val('');
    $('#txtbarcode').val('');
    $('#txtDiscription').val('');
    $('#txtdistPer').val('');
    $('#txtTradePrice').val('');
    $('#txtRetailPrice').val('');
    $('#ddlHead').val('');
    $('#txtWt').val('');
    $('#ddlHead1').val('');
    CheckDataLength();

    $("#btnSave").text("Save");
}




   $("#tablepaging tbody tr").live('click', function () {
       //            document.getElementById("<%=hdnid.ClientID%>").value = $(this).closest('tr').children('td.one').text();
            document.getElementById("lblID").innerHTML = $(this).closest('tr').children('td.one').text();
            document.getElementById("txtitemname").value = $(this).closest('tr').children('td.two').text();
            document.getElementById("txtItemCode").value = $(this).closest('tr').children('td.three').text();
            document.getElementById("txtbarcode").value = $(this).closest('tr').children('td.four').text();
            document.getElementById("txtDiscription").value = $(this).closest('tr').children('td.five').text();
            document.getElementById("txtdistPer").value = $(this).closest('tr').children('td.seven').text();
            document.getElementById("txtTradePrice").value = $(this).closest('tr').children('td.eight').text();
            document.getElementById("txtRetailPrice").value = $(this).closest('tr').children('td.nine').text();

            document.getElementById("ddlHead").value = $(this).closest('tr').children('td.six').text();
            document.getElementById("ddlHead1").value = $(this).closest('tr').children('td.ten').text();
            document.getElementById("txtWt").value = $(this).closest('tr').children('td.eleven').text();


            $("#btnSave").text("Update");


           // var txtWt = document.getElementById("txtWt");
           // CheckDataLengthV2(txtWt);
    CheckDataLength();
    });