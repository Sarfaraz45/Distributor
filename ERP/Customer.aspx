<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="ERP_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../jquery-1.8.2.js" type="text/javascript"></script>
         <link rel="stylesheet" media="screen, print" href="../css/notifications/toastr/toastr.css">
         <script src="../js/notifications/toastr/toastr.js"></script>
   <title>MUMTAJ SERVICES | Customer</title>

  <%--   <script src="../js/vendors.bundle.js" type="text/javascript"></script>
        <script src="../js/app.bundle.js" type="text/javascript"></script>
   <link rel="stylesheet" media="screen, print" href="../css/datagrid/datatables/datatables.bundle.css">
   <script src="../js/datagrid/datatables/datatables.bundle.js"></script>--%>
   
  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <main id="js-page-content" role="main" class="page-content">
                        
                        <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-edit'></i> Form Customer
                            </h1>
                        </div>
                     
                          <label  id="lblID" style="display:none;"></label>
        <asp:HiddenField ID="hdnid" runat="server" />
                         <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            Form Information 
                                        </h2>

                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
                                    <div class="panel-container show">
                                        <div class="panel-content">      
                                      
                                            <form>
                                                   <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Customer Title</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Customer Title" id="txtSupplierTitle" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Customer Title.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Customer Code</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Customer Code" id="txtSupplierCode" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Customer Code.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>


                                                <div class="row" style="height:10px;"></div>

                                                <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Cell No</label>
                                                    <input type="number" class="form-control is-invalid" placeholder="Type Customer Number" id="txtCellNo" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Customer Number.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Phone</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Phone" id="txtPhone" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Customer Phone Number.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>
                                                <div class="row" style="height:10px;"></div>
                                                <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Phone 2</label>
                                                    <input type="number" class="form-control is-invalid" placeholder="Enter Phone 2" id="txtPhone2" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Phon2.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Fax</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Fax" id="txtFax" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Fax Number.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>
                                                 <div class="row" style="height:10px;"></div>
                                                <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Email </label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Email Address" id="txtEmail" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a Email ID.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Address Line 1</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Address 1" id="txtAddressLine1" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Address.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>
                                                <div class="row" style="height:10px;"></div>
                                                 <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Address Line 2</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Addess Line 2" id="txtAddressLine2" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Address2.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">NTN</label>
                                                    <input type="number" class="form-control is-invalid" placeholder="Enter NTN" id="txtNTN" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid NTN.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>

                                                <div class="row" style="height:10px;"></div>
                                                               <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">GST</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter GST" id="txtGST" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a GST.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">SRB</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter SRB " id="txtSRB" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid SRB.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>

                                                <div class="row" style="height:10px;"></div>
                                                  <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Aging Days</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Aging Days" id="txtAgingDays" value="1" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a Aging Day.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Opening Balance</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Opening Balance "  value="0" id="txtOpBal" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a Opening Balance.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>

                                              
                                                <div class="row" style="height:10px;"></div>
                                                  <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">CNIC</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter CNIC" id="txtCNIC"  autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a Valid CNIC.
                                                        </div>
                                                </div>
                                                </div>
                                                <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-select">Select Booking Day </label>
                                                     <select class="custom-select is-invalid" id="ddlBookingDay" onchange="CheckDataLength();" >
                                                       
                          <option value="0">SELECT DAY</option>
                          <option value="MONDAY">MONDAY</option>
                          <option value="TUESDAY">TUESDAY</option>
                          <option value="WEDNESDAY">WEDNESDAY</option>
                          <option value="THURSDAY">THURSDAY</option>
                          <option value="FRIDAY">FRIDAY</option>
                          <option value="SATURDAY">SATURDAY</option>
                          <option value="SUNDAY">SUNDAY</option>
                          
                         
                                                    </select>
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Booking Day.
                                                        </div>
                                                </div>
                                                </div>
                                               
                                                   
                                                
                                                </div>
                                                  <div class="row" style="height:10px;"></div>

                                                  <div class="row">
                                          <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-select">Select Delivery Day </label>
                                                     <select class="custom-select is-invalid" id="ddlDeliveryDay" onchange="CheckDataLength();" >
                                                       
                          <option value="0">SELECT DAY</option>
                          <option value="MONDAY">MONDAY</option>
                          <option value="TUESDAY">TUESDAY</option>
                          <option value="WEDNESDAY">WEDNESDAY</option>
                          <option value="THURSDAY">THURSDAY</option>
                          <option value="FRIDAY">FRIDAY</option>
                          <option value="SATURDAY">SATURDAY</option>
                          <option value="SUNDAY">SUNDAY</option>
                          
                         
                                                    </select>
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please Select Day.
                                                        </div>
                                                </div>
                                                </div>
                                               
                                                
                                                <%--<div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-select">Select Delivery Day </label>
                                                     <select class="custom-select is-invalid" id="ddlBookingDay" onchange="CheckDataLength();" >
                                                       
                          <option value="0">SELECT DAY</option>
                          <option value="MONDAY">MONDAY</option>
                          <option value="TUESDAY">TUESDAY</option>
                          <option value="WEDNESDAY">WEDNESDAY</option>
                          <option value="THURSDAY">THURSDAY</option>
                          <option value="FRIDAY">FRIDAY</option>
                          <option value="SATURDAY">SATURDAY</option>
                          <option value="SUNDAY">SUNDAY</option>
                          
                         
                                                    </select>
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Booking Day.
                                                        </div>
                                                </div>
                                                </div>--%>
                                               
                                                   
                                                
                                                </div>

                                                <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-select">Invoice Duration </label>
                                                     <select class="custom-select is-invalid" id="ddlInvoiceDuration" onchange="CheckDataLength();" >
                                 <option value="0">SELECT Invoice Duration</option>                      
                          <option value="1">Daily</option>
                              <option value="7">Weekly</option>
                              <option value="15">Fortnigh</option>
                              <option value="30">Monthly</option>
                         
                                                    </select>
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Booking Day.
                                                        </div>
                                                </div>
                                                </div>
                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-select">Customer Type </label>
                                                     <select class="custom-select is-invalid" id="ddlCustomerType" onchange="CheckDataLength();" >
                                                       
                      
                         
                                                    </select>
                                                  
                                                </div>
                                                </div>
                                               
                                                
                                                   
                                                
                                                </div>

                     
                                                

                                                 <div class="row" style="height:10px;"></div>

                                           
                                                
                                              

                                                   
                                      


                                             
                                                <%--    <div class="row" style="height:10px;"></div>
                                                         <div class="row">
                                                   <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Address Line 1</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Address Line 1" id="txtAddressLine1" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Address Line 1.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Address Line 2</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Address Line 2" id="txtAddressLine2" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Address Line 2.
                                                        </div>
                                                </div>
                                                </div>
                                                    
                                                 </div>
                                                <div class="row" style="height:20px;"></div>
                                                  <div class="row">

                                                  <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">GST</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type GST" id="txtGST" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid GST.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">SRB</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type SRB" id="txtSRB" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid SRB.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Opening Balance</label>
                                                    <input type="number" class="form-control is-invalid" min=0 placeholder="Opening Balance" id="txtOpBal" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Opening Balance.
                                                        </div>
                                                </div>
                                                </div>
                                                     
                                                
                                                </div>
                                                <div class="row" style="height:20px;"></div>--%>
<%--
                                                 <div class="row">
                                                 <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Title 1</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Bank Title 1" id="txtBank1Title" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Title 1.
                                                        </div>
                                                </div>
                                                </div>
                                                  <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Account # 1</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Bank Account # 1" id="txtBank1Acc" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Account # 1.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Name 1</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Bank Name 1" id="txtBank1Name" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Name 1.
                                                        </div>
                                                </div>
                                                </div>
                                                    
                                                
                                                </div>
                                                <div class="row" style="height:20px;"></div>

                                                 <div class="row">
                                                  <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Title 2</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Bank Title 2" id="txtBank2Title" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Title 2.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Account # 2</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Bank Account # 2" id="txtBank2Acc" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Account # 2.
                                                        </div>
                                                </div>
                                                </div>
                                                  <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Name 2</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Bank Name 2" id="txtBank2Name" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Name 2.
                                                        </div>
                                                </div>
                                                </div>
                                                    
                                                
                                                </div>


                                                <div class="row" style="height:20px;"></div>
                                                   <div class="row">
                                                             <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Title 3</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Bank Title 3" id="txtBank3Title" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Title 3.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Account # 3</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Bank Account # 3" id="txtBank3Acc" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Account # 3.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bank Account Name 3</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Bank Account Name 3" id="txtBank3Name" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Bank Account Name 3.
                                                        </div>
                                                </div>
                                                </div>
                                                </div>--%>
                                                <div class="row" style="height:20px;"></div>
                                                        
                                                 <div class="form-group" style="text-align:right;">
                                             <button type="button" id="btnSave" class="btn btn-success waves-effect waves-themed" onclick="SaveData();">Save</button>
                                             <button type="button" class="btn btn-danger waves-effect waves-themed" onclick="DeleteRegion()">Delete</button>
                                             <button type="button" id="btnClear" class="btn btn-warning waves-effect waves-themed" onclick="Clear();">Cancel</button>
                                             </div>
                                               
                                            
                                            </form>
                                                                         
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                            
                          
                          </div>
                        

                          <div class="row">
                            <div class="col-xl-12">
                                <div id="Div1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                           Customer List
                                        </h2>

                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>

                                    <div class="panel-container show">
                                        <div class="panel-content">                                          
                                            <form>
                                                
                                                <div class="form-group" id="DivRegion">
                                                    
                                                </div>
                                                </form></div></div>
                                    </div>
                                    </div></div>
                    </main>
    <script src="Customer.js" type="text/javascript"></script> 
        <%--   <script src="../js/vendors.bundle.js" type="text/javascript"></script>
        <script src="../js/app.bundle.js" type="text/javascript"></script>--%>
</asp:Content>


