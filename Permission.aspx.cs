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
public partial class Permission : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    DataSet ds;
    String status = "Not Yet";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            cmd = new SqlCommand("select uname from registration", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());
            }
            con.Close();
        }


        con.Open();
        da = new SqlDataAdapter("select * from registration", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

        con.Open();
        da = new SqlDataAdapter("select * from permission", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == null)
        {
        }
        else
        {
            cmd = new SqlCommand("select pwd from registration where uname='" + DropDownList1.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox1.Text = Convert.ToString(dr[0]);
               

            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into permission values('" + DropDownList1.Text + "','" + TextBox1.Text + "','" + status + "')", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Permission granted')</script>");
        cmd.Dispose();
        con.Close();

        con.Open();
        da = new SqlDataAdapter("select * from permission", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();
    }
}
