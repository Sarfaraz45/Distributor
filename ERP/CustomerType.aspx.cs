using System;
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

public partial class CustomerType_ERP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    [WebMethod]
    public static string InsertRegion(string CustomerType, string UserID)
    {

        string retMessage = string.Empty;
        string msg = "";
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);
        string ID = AACommon.GetAlphaNumericIDSIX("ITM_Customer_Type", "CUST-", "CustomerTypeID", Conn);
        SqlParameter CustomerTypeID_P = new SqlParameter("@CustomerTypeID", ID);
        SqlParameter CustomerTypeDesc_P = new SqlParameter("@CustomerTypeDesc", CustomerType);
        SqlParameter CREATEBY = new SqlParameter("@CreateBy", UserID);
        msg = AACommon.Execute("ITM_CustomerType_Insert", Conn, CustomerTypeID_P, CustomerTypeDesc_P, CREATEBY);


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
    public static string UpdateRegion(string CustomerTypeID, string CustomerTypeDesc)
    {
        string retMessage = string.Empty;
        string msg = "";
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);
        SqlParameter CustomerTypeID_P = new SqlParameter("@CustomerTypeID", CustomerTypeID);
        SqlParameter CustomerTypeDesc_P = new SqlParameter("@CustomerTypeDesc", CustomerTypeDesc);
        msg = AACommon.Execute("ITM_CustomerType_UPDATE", Conn, CustomerTypeID_P, CustomerTypeDesc_P);


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
    public static string DeleteRegion(string CustomerTypeID, string UserID)
    {

        string retMessage = string.Empty;
        string msg = "";
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);


        SqlParameter CustomerTypeID_P = new SqlParameter("@CustomerTypeID", CustomerTypeID);
        SqlParameter DeleteBy_P = new SqlParameter("@DeleteBy", UserID);
        msg = AACommon.Execute("ITM_Customer_Type_Delete", Conn, CustomerTypeID_P, DeleteBy_P);


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
        DataSet ds = AACommon.ReturnDatasetBySPWithoutParameter("ITM_Customer_Type_Get", Conn);
        List<GetRegionClass> RegionList = new List<GetRegionClass>();
        RegionList.Clear();
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                GetRegionClass dbdc = new GetRegionClass();

                dbdc.CustomerTypeID = ds.Tables[0].Rows[i][0].ToString();
                dbdc.CustomerTypeDesc = ds.Tables[0].Rows[i][1].ToString();
                RegionList.Insert(i, dbdc);
            }

        }


        JavaScriptSerializer jser = new JavaScriptSerializer();


        return jser.Serialize(RegionList);


    }

    public class GetRegionClass
    {
        public string UnitTypeID { get; set; }
        public string UnitTypeDesc { get; set; }


        public string PackingTypeID { get; set; }

        public string PackingTypeDesc { get; set; }

        public string CustomerTypeDesc { get; set; }

        public string CustomerTypeID { get; set; }
    }









    public static SqlParameter[] PackingTypeID_P { get; set; }

    public static object PackingTypeDesc_P { get; set; }
}