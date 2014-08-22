using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_EditEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int eventID = int.Parse((sender as LinkButton).CommandArgument);
        DataTable dt = BLLEvent.GetEvent_ByEventId(eventID);

        txtEventTitle.Text = dt.Rows[0]["EventTitle"].ToString();
        txtEventDate.Text = dt.Rows[0]["Date"].ToString();
        txtStartingTime.Text = dt.Rows[0]["StartingTime"].ToString();
        txtEndingTime.Text = dt.Rows[0]["EndTime"].ToString();
        txtVenue.Text = dt.Rows[0]["Venue"].ToString();
        txtPosetedBy.Text = dt.Rows[0]["PostedBy"].ToString();
        txtContactNumber.Text = dt.Rows[0]["ContactNumber"].ToString();
        txtDescription.Text = dt.Rows[0]["Description"].ToString();

        imgEvent.ImageUrl = "~/Assets/Images/Event/" + dt.Rows[0]["Image"].ToString();
       
        

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}