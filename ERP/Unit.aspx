<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="Unit.aspx.cs" Inherits="Unit_ERP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/jquery-1.8.2.js" type="text/javascript"></script>
         <link rel="stylesheet" media="screen, print" href="../css/notifications/toastr/toastr.css">
         <script src="../js/notifications/toastr/toastr.js"></script>
   <title>MUMTAJ SERVICES | Unit</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <main id="js-page-content" role="main" class="page-content">
                        
                        <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-edit'></i>Unit
                            </h1>
                        </div>
                     
                          <label  id="lblID" style="display:none;"></label>
        <asp:HiddenField ID="hdnid" runat="server" />
                         <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            Unit Information 
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
                                                    <label class="form-label" for="example-palaceholder">Unit Title</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Unit Title" id="txttitle" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Unit Title.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Display Name</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Type Display Name" id="txtdusplay" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Display Name.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>


                                                <div class="row" style="height:10px;"></div>

                                                <div class="row">
                                                <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-select">Select Unit Type </label>
                                                     <select class="custom-select is-invalid" id="ddlHead" onchange="CheckDataLength();" >
                                                      
                                                    </select>
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Unit Type.
                                                        </div>
                                                </div>
                                                </div>
                                               
                                               <div class="col-md-6">
                                               <div class="form-group">
                        <label class="control-label col-md-6 col-sm-6 col-xs-12">Switch</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="">
                            <label>
                              <input type="checkbox" class="js-switch" id="chkbase" Unchecked /> IsBase
                            </label>
                          </div>
                          
                        
                        </div>
                      </div>
                                                

                                                 <div class="row" style="height:10px;"></div>

                                                 <div class="row">

                                                  <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Base Multiplier</label>
                                                    <input type="number" min=0  class="form-control is-valid" placeholder="Base Multiplier Name" id="txtbasemulti" autocomplete="off" onkeyup="CheckDataLength();" />
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                        <%--                <div class="invalid-feedback">
                                                          Please provide a valid Multiplier.
                                                        </div>--%>
                                                </div>
                                                </div>
                                                 </div>
                                                
                                              

                                                   
                                      


                                             
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
                                             <button type="button" class="btn btn-danger waves-effect waves-themed" onclick="DeleteRegion();">Delete</button>
                                             <button type="button" id="btnClear" class="btn btn-warning waves-effect waves-themed" onclick="Clear();">Cancel</button>
                                             </div>
                                               
                                            
                                            </form>
                                                                         
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                            
                          
                        

                          <div class="row">
                            <div class="col-xl-12">
                                <div id="Div1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            Unit List
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
    <script src="Unit.js" type="text/javascript"></script> 
         
</asp:Content>


