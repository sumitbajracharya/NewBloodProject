using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.Security;




public partial class MasterPage : System.Web.UI.MasterPage
{
        
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataload();
            EventLoad();
        }

    }

    public void dataload()
    {
            ddl_bloodgroup.DataSource = BloodGroupAndLocation.BloodGroup();
            ddl_bloodgroup.DataTextField = "BloodGroup";
            ddl_bloodgroup.DataBind();
            ddl_bloodgroup.Items.Insert(0,"Blood Type");


            ddl_location.DataSource = BLLLocation.GetAllLocation();
            ddl_location.DataTextField = "LocationName";
            ddl_location.DataBind();
            ddl_location.Items.Insert(0, "Choose Location");
   
            //ddl_location.DataSource = BloodGroupAndLocation.Location();
            //ddl_location.DataTextField = "LocationName";
            //ddl_location.DataBind();
            //ddl_location.Items.Insert(0, "Choose Location");

            //gv_search.DataSource = ds;
            //gv_search.DataBind();
   }

    protected void btn_search_Click(object sender, EventArgs e)
    {
        int BloodId = ddl_bloodgroup.SelectedIndex;
        int LocationID = ddl_location.SelectedIndex;
        Response.Redirect("DonarList.aspx?Location=" + LocationID+"&BloodGroup=" + BloodId);
    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        if (Membership.ValidateUser(txtUsername.Text, txtPassword.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
            Session["UserName"] = txtUsername.Text;
            Response.Redirect("/user/UserProfile.aspx");
        }
    }
    BLLEvent ble = new BLLEvent();
    protected void EventLoad()
    {
        {
            DataTable dt = ble.GetEvent_Today();
            if (dt.Rows.Count > 0)
            {
                rptEvent.DataSource = dt;
                rptEvent.DataBind();
            }
        }
    }
    protected void btnPostEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("User/PostEventForm.aspx");
        //Server.Transfer("~/User/PostEventForm.aspx", true);
    }
  
}

    