using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BloodDonation : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(Role==admin)
        //{
        //    pnllink.Visible = true;
        //}
        //else
        //{
        //  pnllink.Visible = false;
        //}
        if (Session["UserName"] != null)
        {
                    LblUser.Text = "Welcome" + Session["UserName"].ToString();
        }
    }
    protected void lnbLogout_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Response.Redirect("~/Home.aspx");
    }
}
