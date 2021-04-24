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
public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
    SqlCommand cmd = new SqlCommand();
    //String status = "Not Yet";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        if (Convert.ToInt32(TextBox8.Text) >= 18)
        {

            con.Open();
            cmd = new SqlCommand("select uname from registration where uname='" + TextBox1.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('The user Details are Already Exist')</script>");
                cmd.Dispose();
                dr.Close();
            }
            else
            {
                try
                {
                    dr.Close();
                    cmd = new SqlCommand("insert into registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "'," + TextBox8.Text + "," + TextBox9.Text + ")", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                    cmd.Dispose();
                }
                catch (Exception ex) 
                {


                }

            }
        }
        else
        {

            Response.Write("<script>alert('Your Not eligible to Vote')</script>");
        }

        con.Close();







    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox7.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());
        //DateTime dt = Convert.ToDateTime(TextBox7.Text);
        //int curYear = System.DateTime.Now.Year;
        //TextBox8.Text = Convert.ToString(Convert.ToInt32(curYear) - dt.Year);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(TextBox7.Text);
        int curYear = System.DateTime.Now.Year;
        TextBox8.Text = Convert.ToString(Convert.ToInt32(curYear) - dt.Year);
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
