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
public partial class AdminResult : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //TV
        cmd = new SqlCommand("select count(cname)from vote where cname='DMK'", con);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = Convert.ToString(dr[0]);


        }
        con.Close();

        //Glass
        cmd = new SqlCommand("select count(cname)from vote where cname='ADMK'", con);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = Convert.ToString(dr[0]);


        }
        con.Close();

        //Dress
        cmd = new SqlCommand("select count(cname)from vote where cname='DMDK'", con);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label3.Text = Convert.ToString(dr[0]);


        }
        con.Close();

        //Food
        cmd = new SqlCommand("select count(cname)from vote where cname='MDMK'", con);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label4.Text = Convert.ToString(dr[0]);


        }
        con.Close();

        //Shoe
        cmd = new SqlCommand("select count(cname)from vote where cname='CONGRESS'", con);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label5.Text = Convert.ToString(dr[0]);


        }
        con.Close();




        cmd = new SqlCommand("select cname,count(*) from vote group by cname order by count(*) desc", con);
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label7.Text = Convert.ToString(dr[0]);

        }
        con.Close();



    }
}
