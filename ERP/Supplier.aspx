<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="Supplier.aspx.cs" Inherits="ERP_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../jquery-1.8.2.js" type="text/javascript"></script>
         <link rel="stylesheet" media="screen, print" href="../css/notifications/toastr/toastr.css">
         <script src="../js/notifications/toastr/toastr.js"></script>
   <title>MUMTAJ SERVICES | Supplier</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <main id="js-page-content" role="main" class="page-content">
                        
                        <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-edit'></i> Add Supplier
                            </h1>
                        </div>
                     
                          <label  id="lblID" style="display:none;"></label>
        <asp:HiddenField ID="hdnid" runat="server" />
                         <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            Supplier Information 
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
                                                    <label class="form-label" for="example-palaceholder">Supplier Title</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Supplier Title" id="txtSupplierTitle" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Supplier Title.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Supplier Code</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Supplier Code" id="txtSupplierCode" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Supplier Code.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>
                                                <div class="row" style="height:10px;"></div>

                                                  <div class="row">
                                                         <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Phone</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Phone" id="txtPhone" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Phone.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Fax</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Fax" id="txtFax" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Fax.
                                                        </div>
                                                </div>
                                                </div>
                                                  <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Email</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Email" id="txtEmail" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Email.
                                                        </div>
                                                </div>
                                                </div>
                                                 <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">NTN</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type NTN" id="txtNTN" autocomplete="off" onkeyup="CheckDataLength();" >
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
                                                <div class="row" style="height:20px;"></div>

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
                                                </div>
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
                                            Suplier List
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
    <script src="Supplier.js" type="text/javascript"></script> 
         
</asp:Content>


