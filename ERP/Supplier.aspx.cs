using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Data.Sql;
using System.Web.Script.Serialization;
using System.IO;
using System.ComponentModel.DataAnnotations;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class ERP_Default : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }



    [WebMethod]
    public static string InsertRegion(string SupplierTitle, string SupplierCode, string Phone, string Fax, string Email, string AddressLine1, string AddressLine2, string NTN, string GST, string SRB, string opBal, string Bank1Title, string Bank1AccountNo, string Bank1BankName, string Bank2Title, string Bank2AccountNo, string Bank2BankName, string Bank3Title, string Bank3AccountNo, string Bank3BankName, string UserID)
    {

        string retMessage = string.Empty;
        string msg = "";
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);
        //SqlConnection ConACC = new SqlConnection(ConfigurationManager.ConnectionStrings["ConACC"].ConnectionString);

        string ID = AACommon.GetAlphaNumericIDSIX("Supplier", "SIP-", "SupplierID", Conn);
        SqlParameter SupplierID_P = new SqlParameter("@SupplierID", ID);
        SqlParameter SupplierTitle_P = new SqlParameter("@SupplierTitle", SupplierTitle);
        SqlParameter SupplierCode_P = new SqlParameter("@SupplierCode", SupplierCode);
        SqlParameter Phone_P = new SqlParameter("@Phone", Phone);
        SqlParameter Fax_P = new SqlParameter("@Fax", Fax);
        SqlParameter Email_P = new SqlParameter("@Email", Email);
        SqlParameter AddressLine1_P = new SqlParameter("@AddressLine1", AddressLine1);
        SqlParameter AddressLine2_P = new SqlParameter("@AddressLine2", AddressLine2);
        SqlParameter NTN_P = new SqlParameter("@NTN", NTN);
        SqlParameter GST_P = new SqlParameter("@GST", GST);
        SqlParameter SRB_P = new SqlParameter("@SRB", SRB);
        SqlParameter OpBal = new SqlParameter("@OpBal", opBal);

        SqlParameter Bank1Title_P = new SqlParameter("@Bank1Title", Bank1Title);
        SqlParameter Bank1AccountNo_p = new SqlParameter("@Bank1AccountNo", Bank1Title);
        SqlParameter Bank1BankName_P = new SqlParameter("@Bank1BankName", Bank1BankName);
        SqlParameter Bank2Title_P = new SqlParameter("@Bank2Title", Bank2Title);
        SqlParameter Bank2AccountNo_P = new SqlParameter("@Bank2AccountNo", Bank2AccountNo);
        SqlParameter Bank2BankName_P = new SqlParameter("@Bank2BankName", Bank2BankName);
        SqlParameter Bank3Title_P = new SqlParameter("@Bank3Title", Bank3Title);
        SqlParameter Bank3AccountNo_P = new SqlParameter("@Bank3AccountNo", Bank3AccountNo);
        SqlParameter Bank3BankName_P = new SqlParameter("@Bank3BankName", Bank3BankName);
        SqlParameter CREATEBY = new SqlParameter("@CreateBy", UserID);
        msg = AACommon.Execute("Supplier_Insert", Conn, SupplierID_P, SupplierTitle_P, SupplierCode_P, Phone_P, Fax_P, Email_P, AddressLine1_P, AddressLine2_P, NTN_P, GST_P, SRB_P, OpBal, Bank1Title_P, Bank1AccountNo_p, Bank1BankName_P, Bank2Title_P, Bank2AccountNo_P, Bank2BankName_P, Bank3Title_P, Bank3AccountNo_P, Bank3BankName_P, CREATEBY);




        /////////////////////ACCOUNTS /////////////////////////
        //string opD = "0"; string opC = "0";
        //if (Convert.ToDecimal(opBal) > 0) { opD = opBal; opC = "0"; }
        //else if (Convert.ToDecimal(opBal) < 0) { opD = "0"; opC = opBal; }

        //string L4ID = AACommon.GetData("SELECT AccountID FROM AACCOUNTS_Integration WHERE (Description = 'Vendors')", ConACC, "AccountID");
        //string ledgerID = AACommon.GetAlphaNumericIDTHREE("Accounts", L4ID, "L4_ID", ConACC);
        //SqlParameter L4_ID = new SqlParameter("@L4_ID", ledgerID);
        //SqlParameter Desc_Level4 = new SqlParameter("@Desc_Level4", SupplierTitle);
        //SqlParameter L4_IDNew = new SqlParameter("@L4_IDNew", L4ID);
        //SqlParameter Opdr = new SqlParameter("@Opdr", opD);
        //SqlParameter Opcr = new SqlParameter("@Opcr", opC);
        //SqlParameter CompanyID = new SqlParameter("@CompanyID", "12");
        //SqlParameter FiscalID = new SqlParameter("@FiscalID", "22");
        //SqlParameter BalanceValidation = new SqlParameter("@BalanceValidation", "0");
        //AACommon.Execute("Insert_Accounts", ConACC, L4_ID, Desc_Level4, L4_IDNew, Opdr, Opcr, CompanyID, FiscalID, BalanceValidation);
        ///////////////////////////////////

        //string str = "update Supplier set LedgerID='" + ledgerID + "' where SupplierID='" + ID + "'";
        //SqlCommand cmd = new SqlCommand(str, Conn);
        //if (Conn.State == ConnectionState.Closed) { Conn.Open(); }
        //cmd.ExecuteNonQuery();
        //if (Conn.State == ConnectionState.Open) { Conn.Close(); }



        if (msg == "Record Saved Successfully")
        {
            retMessage = "true";
        }
        else
        {
            retMessage = "false";
        }

        return retMessage;
    }




    [WebMethod]
    public static string UpdateRegion(string SupplierID, string SupplierTitle, string SupplierCode, string Phone, string Fax, string Email, string AddressLine1, string AddressLine2, string NTN, string GST, string SRB, string opBal, string Bank1Title, string Bank1AccountNo, string Bank1BankName, string Bank2Title, string Bank2AccountNo, string Bank2BankName, string Bank3Title, string Bank3AccountNo, string Bank3BankName)
    {
        string retMessage = string.Empty;
        string msg = "";
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);
        SqlParameter SupplierID_P = new SqlParameter("@SupplierID", SupplierID);
        SqlParameter SupplierTitle_P = new SqlParameter("@SupplierTitle", SupplierTitle);
        SqlParameter SupplierCode_P = new SqlParameter("@SupplierCode", SupplierCode);
        SqlParameter Phone_P = new SqlParameter("@Phone", Phone);
        SqlParameter Fax_P = new SqlParameter("@Fax", Fax);
        SqlParameter Email_P = new SqlParameter("@Email", Email);
        SqlParameter AddressLine1_P = new SqlParameter("@AddressLine1", AddressLine1);
        SqlParameter AddressLine2_P = new SqlParameter("@AddressLine2", AddressLine2);
        SqlParameter NTN_P = new SqlParameter("@NTN", NTN);
        SqlParameter GST_P = new SqlParameter("@GST", GST);
        SqlParameter SRB_P = new SqlParameter("@SRB", SRB);
        SqlParameter OpBal = new SqlParameter("@OpBal", opBal);
        SqlParameter Bank1Title_P = new SqlParameter("@Bank1Title", Bank1Title);
        SqlParameter Bank1AccountNo_p = new SqlParameter("@Bank1AccountNo", Bank1Title);
        SqlParameter Bank1BankName_P = new SqlParameter("@Bank1BankName", Bank1BankName);
        SqlParameter Bank2Title_P = new SqlParameter("@Bank2Title", Bank2Title);
        SqlParameter Bank2AccountNo_P = new SqlParameter("@Bank2AccountNo", Bank2AccountNo);
        SqlParameter Bank2BankName_P = new SqlParameter("@Bank2BankName", Bank2BankName);
        SqlParameter Bank3Title_P = new SqlParameter("@Bank3Title", Bank3Title);
        SqlParameter Bank3AccountNo_P = new SqlParameter("@Bank3AccountNo", Bank3AccountNo);
        SqlParameter Bank3BankName_P = new SqlParameter("@Bank3BankName", Bank3BankName);
        msg = AACommon.Execute("Supplier_Update", Conn, SupplierID_P, SupplierTitle_P, SupplierCode_P, Phone_P, Fax_P, Email_P, AddressLine1_P, AddressLine2_P, NTN_P, GST_P, SRB_P, OpBal, Bank1Title_P, Bank1AccountNo_p, Bank1BankName_P, Bank2Title_P, Bank2AccountNo_P, Bank2BankName_P, Bank3Title_P, Bank3AccountNo_P, Bank3BankName_P);

        //cHANGES BY SA/
        //Update_Account_OpBal
        SqlConnection ConACC = new SqlConnection(ConfigurationManager.ConnectionStrings["ConACC"].ConnectionString);
        string lgrID = AACommon.GetData("select LedgerID from Supplier where SupplierID='" + SupplierID + "'", Conn, "LedgerID");
        string opD = "0"; string opC = "0";
        if (Convert.ToDecimal(opBal) > 0) { opD = opBal; opC = "0"; }
        else if (Convert.ToDecimal(opBal) < 0) { opD = "0"; opC = opBal; }
        SqlParameter L4_ID = new SqlParameter("@L4_ID", lgrID);
        SqlParameter Opcr = new SqlParameter("@Opcr", opC);
        SqlParameter Opdr = new SqlParameter("@Opdr", opD);
        AACommon.Execute("Update_Account_OpBal", ConACC, L4_ID, Opcr, Opdr);

        //cHANGES BY SA/

        if (msg == "Record Saved Successfully")
        {
            retMessage = "true";
        }
        else
        {
            retMessage = "false";
        }

        return retMessage;
    }


    [WebMethod]
    public static string DeleteRegion(string SupplierID, string UserID)
    {

        string retMessage = string.Empty;
        string msg = "";
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);


        SqlParameter SupplierID_P = new SqlParameter("@SupplierID", SupplierID);
        SqlParameter DeleteBy_P = new SqlParameter("@DeleteBy", UserID);
        msg = AACommon.Execute("Supplier_Delete", Conn, SupplierID_P, DeleteBy_P);


        if (msg == "Record Saved Successfully")
        {
            retMessage = "true";
        }
        else
        {
            retMessage = "false";
        }

        return retMessage;

    }







    [WebMethod]
    public static string LoadRegion()
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);
        DataSet ds = AACommon.ReturnDatasetBySPWithoutParameter("Supplier_Get", Conn);
        List<GetRegionClass> RegionList = new List<GetRegionClass>();
        RegionList.Clear();
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                GetRegionClass dbdc = new GetRegionClass();

                dbdc.SupplierID = ds.Tables[0].Rows[i]["SupplierID"].ToString();
                dbdc.SupplierTitle = ds.Tables[0].Rows[i]["SupplierTitle"].ToString();
                dbdc.SupplierCode = ds.Tables[0].Rows[i]["SupplierCode"].ToString();
                dbdc.Phone = ds.Tables[0].Rows[i]["Phone"].ToString();
                dbdc.Fax = ds.Tables[0].Rows[i]["Fax"].ToString();
                dbdc.Email = ds.Tables[0].Rows[i]["Email"].ToString();
                dbdc.AddressLine1 = ds.Tables[0].Rows[i]["AddressLine1"].ToString();
                dbdc.AddressLine2 = ds.Tables[0].Rows[i]["AddressLine2"].ToString();
                dbdc.NTN = ds.Tables[0].Rows[i]["NTN"].ToString();
                dbdc.GST = ds.Tables[0].Rows[i]["GST"].ToString();
                dbdc.SRB = ds.Tables[0].Rows[i]["SRB"].ToString();
                dbdc.OpBal = ds.Tables[0].Rows[i]["OpBal"].ToString();
                dbdc.Bank1Title = ds.Tables[0].Rows[i]["Bank1Title"].ToString();
                dbdc.Bank1AccountNo = ds.Tables[0].Rows[i]["Bank1AccountNo"].ToString();
                dbdc.Bank1BankName = ds.Tables[0].Rows[i]["Bank1BankName"].ToString();
                dbdc.Bank2Title = ds.Tables[0].Rows[i]["Bank2Title"].ToString();
                dbdc.Bank2AccountNo = ds.Tables[0].Rows[i]["Bank2AccountNo"].ToString();
                dbdc.Bank2BankName = ds.Tables[0].Rows[i]["Bank2BankName"].ToString();
                dbdc.Bank3Title = ds.Tables[0].Rows[i]["Bank3Title"].ToString();
                dbdc.Bank3AccountNo = ds.Tables[0].Rows[i]["Bank3AccountNo"].ToString();
                dbdc.Bank3BankName = ds.Tables[0].Rows[i]["Bank3BankName"].ToString();

                RegionList.Insert(i, dbdc);
            }

        }

        JavaScriptSerializer jser = new JavaScriptSerializer();


        return jser.Serialize(RegionList);
    }

    public class GetRegionClass
    {
        public string SupplierID { get; set; }
        public string SupplierTitle { get; set; }
        public string SupplierCode { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string NTN { get; set; }
        public string GST { get; set; }
        public string SRB { get; set; }
        public string OpBal { get; set; }
        public string Bank1Title { get; set; }
        public string Bank1AccountNo { get; set; }
        public string Bank1BankName { get; set; }
        public string Bank2Title { get; set; }
        public string Bank2AccountNo { get; set; }
        public string Bank2BankName { get; set; }
        public string Bank3Title { get; set; }
        public string Bank3AccountNo { get; set; }
        public string Bank3BankName { get; set; }



    }



}