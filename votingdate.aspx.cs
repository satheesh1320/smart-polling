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
public partial class votingdate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        cmd = new SqlCommand("select * from date", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            //con.Open();
            //SqlCommand cmd = new SqlCommand();
            dr.Close();
            cmd.CommandText = "update date set fdate='" + TextBox1.Text + "',todate=' " + TextBox2.Text + " ' ";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Updated SucussFully')</script>");
            //con.Close();
            cmd.Dispose();
            dr.Close();
        }
        else
        {
            try
            {
                dr.Close();

                cmd = new SqlCommand("insert into date values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Updated SucussFully')</script>");
                cmd.Dispose();
            }
            catch
            {


            }

        }
        con.Close();



    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
    }
}
