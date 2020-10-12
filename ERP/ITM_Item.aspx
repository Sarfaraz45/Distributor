<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="ITM_Item.aspx.cs" Inherits="ITM_Item_ERP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../jquery-1.8.2.js" type="text/javascript"></script>
         <link rel="stylesheet" media="screen, print" href="../css/notifications/toastr/toastr.css">
         <script src="../js/notifications/toastr/toastr.js"></script>
   <title>MUMTAJ SERVICES | ITEM</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <main id="js-page-content" role="main" class="page-content">
                        
                        <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-edit'></i> Add Item
                            </h1>
                        </div>
                     
                          <label  id="lblID" style="display:none;"></label>
        <asp:HiddenField ID="hdnid" runat="server" />
                         <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            Item Information 
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
                                                    <label class="form-label" for="example-palaceholder">Item Name</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Item Name" id="txtitemname" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Item Name.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Item Code</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Item Codee" id="txtItemCode" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Item Code.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>


                                                <div class="row" style="height:10px;"></div>

                                                <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Bar Code</label>
                                                    <input type="text" class="form-control is-valid" placeholder="Enter Bar Code" id="txtbarcode" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a Bar Code Name.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Discription</label>
                                                    <input type="text" class="form-control is-valid" placeholder="Enter Discription" id="txtDiscription" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Item Code.
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
                                                    <label class="form-label" for="example-palaceholder">Distributor Percentage</label>
                                                    <input type="number" min=0  class="form-control is-invalid" placeholder="Enter Distributor Percent" id="txtdistPer" autocomplete="off" onkeyup="CheckDataLength();" />
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide Distributor Percentage.
                                                        </div>
                                                </div>
                                                </div>
                                               
                                                

                                                 <div class="row" style="height:10px;"></div>

                                                

                                                
                                                 </div>
                                                 <div class="row" style="height:10px;"></div>
                                                 <div class="row">
                                                  <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Trade Price</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Trade Price" id="txtTradePrice" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Trade Price.
                                                        </div>
                                                </div>
                                                </div>
                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Retail Price</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Retail Price" id="txtRetailPrice" autocomplete="off" onkeyup="CheckDataLength();" >
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Retail Price.
                                                        </div>
                                                </div>
                                                </div>
                                                   
                                                
                                                </div>


                                                 <div class="row" style="height:10px;"></div>
                                                <div class="row">
                                                <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-select">Select Packing Type </label>
                                                     <select class="custom-select is-invalid" id="ddlHead1" onchange="CheckDataLength();" >
                                                      
                                                    </select>
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Packing Type.
                                                        </div>
                                                </div>
                                                </div>

                                                     <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label" for="example-palaceholder">Weight in KG</label>
                                                    <input type="text" class="form-control is-invalid" placeholder="Enter Weight in KG" id="txtWt" autocomplete="off"  onkeyup="CheckDataLengthV2(this);">
                                                     <div class="valid-feedback">
                                                            Looks good!
                                                        </div>
                                                        <div class="invalid-feedback">
                                                          Please provide a valid Weight in KG.
                                                        </div>
                                                </div>
                                                </div>
                                                </div>


                                                
                                              

                                                   
                                      


                                             
                                                
                                                <div class="row" style="height:20px;"></div>
                                                   <div class="col-md-12" style="text-align:right;">
                                                 <div class="form-group" >
                                             <button type="button" id="btnSave" class="btn btn-success waves-effect waves-themed" onclick="SaveData();">Save</button>
                                             <button type="button" class="btn btn-danger waves-effect waves-themed" onclick="DeleteRegion()">Delete</button>
                                             <button type="button" id="btnClear" class="btn btn-warning waves-effect waves-themed" onclick="Clear();">Cancel</button>
                                             </div>
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
                                            Item List
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
    <script src="ITM_Item.js" type="text/javascript"></script> 
         
</asp:Content>


