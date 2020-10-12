

//LoadRegion();
LoadHead();


function CheckDataLength() {
   // alert("hello");
    var field = document.getElementById("txtSupplierTitle").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtSupplierTitle');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtSupplierTitle');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
    var field = document.getElementById("txtSupplierCode").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtSupplierCode');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtSupplierCode');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
    var field = document.getElementById("txtCellNo").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtCellNo');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtCellNo');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }



    var field = document.getElementById("txtPhone").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtPhone');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtPhone');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtPhone2").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtPhone2');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtPhone2');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("txtFax").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtFax');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtFax');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtEmail").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtEmail');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtEmail');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtAddressLine1").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtAddressLine1');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtAddressLine1');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtAddressLine2").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtAddressLine2');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtAddressLine2');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtNTN").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtNTN');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtNTN');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtGST").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtGST');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtGST');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("txtSRB").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtSRB');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtSRB');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("txtAgingDays").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtAgingDays');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtAgingDays');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }


    var field = document.getElementById("txtOpBal").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtOpBal');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtOpBal');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("txtCNIC").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtCNIC');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtCNIC');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("ddlInvoiceDuration").value;
    if (field == "" || field == null || field == "0") {
        var text = document.getElementById('ddlInvoiceDuration');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('ddlInvoiceDuration');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }
    var field = document.getElementById("ddlBookingDay").value;
    if (field == "" || field == null || field == "0") {
        var text = document.getElementById('ddlBookingDay');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('ddlBookingDay');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("ddlDeliveryDay").value;
    if (field == "" || field == null || field == "0") {
        var text = document.getElementById('ddlDeliveryDay');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('ddlDeliveryDay');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

    var field = document.getElementById("ddlCustomerType").value;
    if (field == "" || field == null || field == "0") {
        var text = document.getElementById('ddlCustomerType');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('ddlCustomerType');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

}
function LoadSaveToastr() {
    Command: toastr["success"]("Record has been saved Successfully.")

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
    Command: toastr["info"]("Record has been updated Successfully.")

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
    Command: toastr["error"]("Record has been deleted Successfully.")

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


function LoadHead() {
    $.ajax({
        type: "POST",
        url: "Customer.aspx/LoadHead",
        data: {},
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            var jsdata = JSON.parse(data.d);
            var rows = "";
            if ($('#ddlCustomerType').select.length != 0) {

                $('#ddlCustomerType').empty();
            }

            $.each(jsdata, function (key, value) {
                rows += "<option  value=" + value.ID + ">" + value.Name + "</option>";
            });

            $("#ddlCustomerType").append(rows);
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
        url: "Customer.aspx/LoadRegion",
        dataType: "json",
        data: "{}",
        success: function (data) {
            var jsdata = JSON.parse(data.d);
            var ro = "";

            if ($('#tablepaging').length != 0) {

                $('#tablepaging').remove();
            }

            ro = "<table id='tablepaging' class='table table-sm dataTable dtr-inline table-hover'  style='cursor: pointer;'><thead ><th>ID</th> <th>Customer</th> <th>Phone</th>  </thead><tbody>";
            $.each(jsdata, function (key, value) {
                ro += "<tr><td   class='one'>" + value.CustomerID + "</td><td   class='two'>" + value.CustomerTitle + "</td><td  style='display:none;' class='three'>" + value.CustomerCode + "</td><td  class='four'>" + value.Phone + "</td><td  style='display:none;' class='five'>" + value.Fax + "</td><td  style='display:none;' class='six'>" + value.Email + "</td><td  style='display:none;'  class='seven'>" + value.AddressLine1 + "</td><td   style='display:none;' class='eight'>" + value.AddressLine2 + "</td><td    style='display:none;' class='nine'>" + value.NTN + "</td><td  style='display:none;' class='ten'>" + value.GST + "</td><td  class='eleven' style='display:none;'>" + value.SRB + "</td><td  style='display:none;' class='tweleve'>" + value.InvoiceDays + "</td><td  class='thirteen' style='display:none;'>" + value.AgingDays + "</td><td  class='fourteen' style='display:none;'>" + value.OpBal + "</td><td  class='CellNo' style='display:none;'>" + value.CellNo + "</td><td  class='Phone2' style='display:none;'>" + value.Phone2 + "</td><td  class='CNIC' style='display:none;'>" + value.CNIC + "</td><td  class='BookingDay' style='display:none;'>" + value.BookingDay + "</td><td  class='DeliveryDay' style='display:none;'>" + value.DeliveryDay + "</td><td  class='CustomerTypeID' style='display:none;'>" + value.CustomerTypeID + "</td></tr>";

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
   // alert("asd");
    var UserID = localStorage.getItem("UserID");
    var txtCellNo = document.getElementById('txtCellNo').value;
    var txtPhone2 = document.getElementById('txtPhone2').value;
    var txtCNIC = document.getElementById('txtCNIC').value;
    var ddlBookingDay = document.getElementById('ddlBookingDay').value;
    var ddlDeliveryDay = document.getElementById('ddlDeliveryDay').value;
    var ddlCustomerTypeID = document.getElementById('ddlCustomerType').value;

    var dataToSend = JSON.stringify({ 'CustomerTitle': $('#txtSupplierTitle').val(), 'CustomerCode': $('#txtSupplierCode').val(), 'Phone': $('#txtPhone').val(), 'Fax': $('#txtFax').val(), 'Email': $('#txtEmail').val(), 'AddressLine1': $('#txtAddressLine1').val(), 'AddressLine2': $('#txtAddressLine2').val(), 'NTN': $('#txtNTN').val(), 'GST': $('#txtGST').val(), 'SRB': $('#txtSRB').val(), 'UserID': UserID, 'InvDays': $('#ddlInvoiceDuration').val(), 'AgDays': $('#txtAgingDays').val(), 'opBal': $('#txtOpBal').val(), 'txtCellNo': txtCellNo, 'txtPhone2': txtPhone2, 'txtCNIC': txtCNIC, 'ddlBookingDay': ddlBookingDay, 'ddlDeliveryDay': ddlDeliveryDay, 'ddlCustomerTypeID': ddlCustomerTypeID });
   // alert(dataToSend);
    var results = $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Customer.aspx/InsertRegion",
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
    // alert("abc");
    var ddl = document.getElementById("lblID").value;
    //var UserID = localStorage.getItem("UserID");
    //alert($('#ContentPlaceHolder1_hdnid').val());LgrID
   var txtCellNo = document.getElementById('txtCellNo').value;
  var txtPhone2 = document.getElementById('txtPhone2').value;
var txtCNIC = document.getElementById('txtCNIC').value;
  var ddlBookingDay = document.getElementById('ddlBookingDay').value;
   var ddlDeliveryDay = document.getElementById('ddlDeliveryDay').value;
    var ddlCustomerTypeID = document.getElementById('ddlCustomerType').value;
    var dataToSend = JSON.stringify({ 'CustomerID': document.getElementById("lblID").innerHTML, 'CustomerTitle': $('#txtSupplierTitle').val(), 'CustomerCode': $('#txtSupplierCode').val(), 'Phone': $('#txtPhone').val(), 'Fax': $('#txtFax').val(), 'Email': $('#txtEmail').val(), 'AddressLine1': $('#txtAddressLine1').val(), 'AddressLine2': $('#txtAddressLine2').val(), 'NTN': $('#txtNTN').val(), 'GST': $('#txtGST').val(), 'SRB': $('#txtSRB').val(), 'InvDays': $('#ddlInvoiceDuration').val(), 'AgDays': $('#txtAgingDays').val(), 'opBal': $('#txtOpBal').val(), 'txtCellNo': txtCellNo, 'txtPhone2': txtPhone2, 'txtCNIC': txtCNIC, 'ddlBookingDay': ddlBookingDay, 'ddlDeliveryDay': ddlDeliveryDay, 'ddlCustomerTypeID': ddlCustomerTypeID });
    //alert(dataToSend);
    var results = $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Customer.aspx/UpdateRegion",
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
//    var field = document.getElementById("txtSupplierTitle").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//    
//    var field = document.getElementById("txtSupplierCode").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//  
//    var field = document.getElementById("txtCellNo").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//   



//    var field = document.getElementById("txtPhone").value;
//    if (field == "" || field == null) {
//        return false;
//    }
// 

//    var field = document.getElementById("txtPhone2").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//  
//    var field = document.getElementById("txtFax").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//  


//    var field = document.getElementById("txtEmail").value;
//    if (field == "" || field == null) {
//        return false;
//    }



//    var field = document.getElementById("txtAddressLine1").value;
//    if (field == "" || field == null) {
//        return false;
//    }
// 


//    var field = document.getElementById("txtAddressLine2").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//  

//    var field = document.getElementById("txtNTN").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//   


//    var field = document.getElementById("txtGST").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//   

//    var field = document.getElementById("txtSRB").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//  

//    var field = document.getElementById("txtAgingDays").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//  


//    var field = document.getElementById("txtOpBal").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//   

//    var field = document.getElementById("txtCNIC").value;
//    if (field == "" || field == null) {
//        return false;
//    }
//  


//    var field = document.getElementById("ddlBookingDay").value;
//    if (field == "" || field == null || field == "0") {
//        return false;
//    }
// 

//    var field = document.getElementById("ddlDeliveryDay").value;
//    if (field == "" || field == null || field == "0") {
//        return false;
//    }
//   

//    var field = document.getElementById("ddlCustomerType").value;
//    if (field == "" || field == null || field == "0") {
//        return false;
//    }
//   

    //  alert($('#ContentPlaceHolder1_hdnid').val());
    var UserID = localStorage.getItem("UserID");
    var dataToSend = JSON.stringify({ 'CustomerID': document.getElementById("lblID").innerHTML, 'UserID': UserID });
    var results = $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Customer.aspx/DeleteRegion",
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

    var field = document.getElementById("txtSupplierTitle").value;
    if (field == "" || field == null) {
        return false;
    }

    var field = document.getElementById("txtSupplierCode").value;
    if (field == "" || field == null) {
        return false;
    }

    var field = document.getElementById("txtCellNo").value;
    if (field == "" || field == null) {
        return false;
    }




    var field = document.getElementById("txtPhone").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("txtPhone2").value;
    if (field == "" || field == null) {
        return false;
    }

    var field = document.getElementById("txtFax").value;
    if (field == "" || field == null) {
        return false;
    }



    var field = document.getElementById("txtEmail").value;
    if (field == "" || field == null) {
        return false;
    }



    var field = document.getElementById("txtAddressLine1").value;
    if (field == "" || field == null) {
        return false;
    }



    var field = document.getElementById("txtAddressLine2").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("txtNTN").value;
    if (field == "" || field == null) {
        return false;
    }



    var field = document.getElementById("txtGST").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("txtSRB").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("txtAgingDays").value;
    if (field == "" || field == null) {
        return false;
    }



    var field = document.getElementById("txtOpBal").value;
    if (field == "" || field == null) {
        return false;
    }


    var field = document.getElementById("txtCNIC").value;
    if (field == "" || field == null) {
        return false;
    }



    var field = document.getElementById("ddlBookingDay").value;
    if (field == "" || field == null || field == "0") {
        return false;
    }


    var field = document.getElementById("ddlDeliveryDay").value;
    if (field == "" || field == null || field == "0") {
        return false;
    }


    var field = document.getElementById("ddlCustomerType").value;
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
    $('#txtSupplierTitle').val('');
    $('#txtSupplierCode').val('');
    $('#txtPhone').val('');
    $('#txtPhone2').val('');
    $('#txtCNIC').val('');
    $('#txtCellNo').val('');
    $('#txtFax').val('');
    $('#txtEmail').val('');
    $('#txtAddressLine1').val('');
    $('#txtAddressLine2').val('');
    $('#txtNTN').val('');
    $('#txtGST').val('');
    $('#txtSRB').val('');
    $('#txtOpBal').val('');
    $('#txtAgingDays').val('');
    $('#ddlInvoiceDuration').val('1');
    $('#ddlBookingDay').val('');
    $('#ddlDeliveryDay').val('');
    $('#ddlInvoiceDuration').val('');
    $('#ddlCustomerType').val('');
    $("#btnSave").text("Save");
    CheckDataLength();


//    document.getElementById('txtCellNo').value = "";
//    document.getElementById('txtPhone2').value = "";
//    document.getElementById('txtCNIC').value = "";
}




$("#tablepaging tbody tr").live('click', function () {
    document.getElementById("lblID").innerHTML = $(this).closest('tr').children('td.one').text();
    document.getElementById("txtSupplierTitle").value = $(this).closest('tr').children('td.two').text();
    document.getElementById("txtSupplierCode").value = $(this).closest('tr').children('td.three').text();
    document.getElementById("txtPhone").value = $(this).closest('tr').children('td.four').text();
    document.getElementById("txtFax").value = $(this).closest('tr').children('td.five').text();
    document.getElementById("txtEmail").value = $(this).closest('tr').children('td.six').text();
    document.getElementById("txtAddressLine1").value = $(this).closest('tr').children('td.seven').text();
    document.getElementById("txtAddressLine2").value = $(this).closest('tr').children('td.eight').text();
    document.getElementById("txtNTN").value = $(this).closest('tr').children('td.nine').text();
    document.getElementById("txtGST").value = $(this).closest('tr').children('td.ten').text();
    document.getElementById("txtSRB").value = $(this).closest('tr').children('td.eleven').text();

    document.getElementById("txtAgingDays").value = $(this).closest('tr').children('td.thirteen').text();
    document.getElementById("ddlInvoiceDuration").value = $(this).closest('tr').children('td.tweleve').text();
    document.getElementById("txtOpBal").value = $(this).closest('tr').children('td.fourteen').text();

    document.getElementById("txtCellNo").value = $(this).closest('tr').children('td.CellNo').text();
    document.getElementById("txtPhone2").value = $(this).closest('tr').children('td.Phone2').text();
    document.getElementById("txtCNIC").value = $(this).closest('tr').children('td.CNIC').text();
    document.getElementById("ddlBookingDay").value = $(this).closest('tr').children('td.BookingDay').text();
    document.getElementById("ddlDeliveryDay").value = $(this).closest('tr').children('td.DeliveryDay').text();
    document.getElementById("ddlCustomerType").value = $(this).closest('tr').children('td.CustomerTypeID').text();
    //txtCellNo, string txtPhone2, string txtCNIC, string ddlBookingDay, string ddlDeliveryDay, string ddlCustomerTypeID
    //CellNo, Phone2, CNIC, BookingDay, DeliveryDay, CustomerTypeID
    $("#btnSave").text("Update");
    CheckDataLength();
    document.getElementById("txtSupplierTitle").focus();

});


//$(document).ready(function () {
//    $.noConflict();
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

