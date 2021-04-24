using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class View_Product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    string uname;
    string res;
    protected void Page_Load(object sender, EventArgs e)
    {
        uname= Session["User"].ToString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
       
        if (RadioButton1.Checked)
            res = "DMK";
        else if (RadioButton2.Checked)
            res = "ADMK";
        else if (RadioButton3.Checked)
            res = "DMDK";

        else if (RadioButton4.Checked)
            res = "MDMK";
        else if (RadioButton5.Checked)
            res = "CONGRESS";
        //else if (RadioButton6.Checked)
        //    res = "Mobile";
        cmd = new SqlCommand("insert into vote values('" + uname + "','" + res + "')", con);
        cmd.ExecuteNonQuery();

        cmd = new SqlCommand("update permission set status='Voted' where uname='" + uname + "'", con);
        cmd.ExecuteNonQuery();

        cmd.Dispose();
        con.Close();



    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            //RadioButton6.Checked = false;            
        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            RadioButton1.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            //RadioButton6.Checked = false;
        }
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton3.Checked == true)
        {
            RadioButton2.Checked = false;
            RadioButton1.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            //RadioButton6.Checked = false;
        }
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton4.Checked == true)
        {
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton1.Checked = false;
            RadioButton5.Checked = false;
            //RadioButton6.Checked = false;
        }
    }
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton5.Checked == true)
        {
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton1.Checked = false;
            //RadioButton6.Checked = false;
        }
    }
    //protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (RadioButton6.Checked == true)
    //    {
    //        RadioButton2.Checked = false;
    //        RadioButton3.Checked = false;
    //        RadioButton4.Checked = false;
    //        RadioButton5.Checked = false;
    //        RadioButton1.Checked = false;
    //    }
    //}
}
