

//LoadRegion();
//LoadHead();


function CheckDataLength() {
    var field = document.getElementById("txtunittype").value;
    if (field == "" || field == null) {
        var text = document.getElementById('txtunittype');
        text.classList.remove('is-valid');
        text.classList.add('is-invalid');
    }
    else {

        var text = document.getElementById('txtunittype');
        text.classList.remove('is-invalid');
        text.classList.add('is-valid');

    }

   

//    var field = document.getElementById("ddlHead").value;
//    if (field == "" || field == null || field == "0") {
//        var text = document.getElementById('ddlHead');
//        text.classList.remove('is-valid');
//        text.classList.add('is-invalid');
//    }
//    else {

//        var text = document.getElementById('ddlHead');
//        text.classList.remove('is-invalid');
//        text.classList.add('is-valid');

//    }

   
}

function LoadSaveToastr() {
    Command: toastr["success"]("Unit Type has been saved Successfully.")

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
    Command: toastr["info"]("Unit Type has been updated Successfully.")

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
    Command: toastr["error"]("Unit Type has been deleted Successfully.")

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

LoadRegion()
function LoadRegion() {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "UnitType.aspx/LoadRegion",
        dataType: "json",
        data: "{}",
        success: function (data) {
            var jsdata = JSON.parse(data.d);
            var ro = "";

            if ($('#tablepaging').length != 0) {

                $('#tablepaging').remove();
            }

            ro = "<table id='tablepaging' class='table table-sm  dataTable dtr-inline table-hover' style='cursor: pointer;' ><thead><th>ID</th><th>UnitType</th></thead><tbody>";
            $.each(jsdata, function (key, value) {
                ro += "<tr><td width='35%'  class='one'>" + value.UnitTypeID + "</td><td width='65%'  class='two'>" + value.UnitTypeDesc + "</td></tr>";

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
    //alert("asd");
    var UserID = localStorage.getItem("UserID");
    // var dataToSend = JSON.stringify({ 'RegionName': $('#C').val(), 'UserID': UserID });
    var dataToSend = JSON.stringify({ 'UnitType': $('#txtunittype').val(), 'UserID': UserID });
//    alert(dataToSend);
    var results = $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "UnitType.aspx/InsertRegion",
        dataType: "json",
        data: dataToSend,
        //data: "{'RegionName':'" + $('#txtunittype').val() + "'}",                
        async: false,
        success: function (data) {
            var obj = data.d;
            if (obj == 'true') {
                LoadRegion();
                Clear();
                CheckDataLength();

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
            //var UserID = localStorage.getItem("UserID");
            //alert($('#ContentPlaceHolder1_hdnid').val());
    var dataToSend = JSON.stringify({ 'UnitTypeID': document.getElementById("lblID").innerHTML, 'UnitTypeDesc': $('#txtunittype').val() });
            //alert(dataToSend);
            var results = $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "UnitType.aspx/UpdateRegion",
                dataType: "json",
                data: dataToSend,
                async: false,
                success: function (data) {
                    var obj = data.d;
                    if (obj == 'true') {
                        LoadRegion();
                        Clear();
                        CheckDataLength();
                    }

                },
                error: function (result) {
                    alert(result);
                }
            });

            return results;

        }
        


        function DeleteRegion() {
            var field = document.getElementById("txtunittype").value;
        if (field == "" || field == null){
        return false;
        }
            //  alert($('#ContentPlaceHolder1_hdnid').val());
            var UserID = localStorage.getItem("UserID");
            var dataToSend = JSON.stringify({ 'UnitTypeID': document.getElementById("lblID").innerHTML, 'UserID': UserID });
            var results = $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "UnitType.aspx/DeleteRegion",
                dataType: "json",
                data: dataToSend,
                async: false,
                success: function (data) {
                    var obj = data.d;

                    if (obj == 'true') {

                        LoadRegion();
                        Clear();
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
            var field = document.getElementById("txtunittype").value;
            if (field == "" || field == null) {
                //  alert("Please type Title");
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
                document.getElementById("txtunittype").value = "";
                document.getElementById("lblID").innerHTML = "";
                $("#btnSave").text("Save");
                CheckDataLength();
            }

            $("#tablepaging tbody tr").live('click', function () {
                // alert($(this).closest('tr').children('td.one').text());
                //    document.getElementById("<%=hdnid.ClientID%>").value = $(this).closest('tr').children('td.one').text();
                document.getElementById("lblID").innerHTML = $(this).closest('tr').children('td.one').text();
                document.getElementById("txtunittype").value = $(this).closest('tr').children('td.two').text();


                $("#btnSave").text("Update");
                CheckDataLength();

            });


             