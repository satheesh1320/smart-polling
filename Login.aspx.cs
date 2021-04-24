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
public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd = new SqlCommand("select * from date", con);

        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr[0].ToString();
            Label2.Text = dr[1].ToString();
        }
     
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from permission where uname='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "' and status='Voted'", con);
        if (con.State== ConnectionState.Closed)
            con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('Already Voted')</script>");
        }
        dr.Close();      
        cmd = new SqlCommand("select * from permission where uname='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "' and status='Not Yet'", con);
       
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["User"] = TextBox1.Text;
            Response.Redirect("Userhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Username password Error. pls Try Again Later')</script>");
        }
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        cmd = new SqlCommand("select * from date where fdate<='" + DateTime.Now.Date + "' and todate>='" + DateTime.Now.Date + "'", con);
        dr = cmd.ExecuteReader();
        Response.Redirect("Registration.aspx");
        //if (dr.Read())
        //{
            
        //    Response.Redirect("Registration.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('Date expired')</script>");
        //}
        con.Close();


        
    }
}
