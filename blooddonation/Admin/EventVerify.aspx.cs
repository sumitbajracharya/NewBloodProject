using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_EventVerify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadEventList();
        }
    }

    BLLEvent ble = new BLLEvent();
    public void LoadEventList()
    {
        DataTable dt = ble.GetEvent_All();
        if (dt.Rows.Count > 0)
        {
            //KamanaSlideImage.DataSource = dt;
            //KamanaSlideImage.DataBind();

            rptrEvents.DataSource = dt;
            rptrEvents.DataBind();
        }
    }

    protected void lnkbtnEvent_click(object sender, EventArgs e)
    {
        int eventID = int.Parse((sender as LinkButton).CommandArgument);
        DataTable dt = BLLEvent.GetEvent_ByEventId(eventID);

        lblEventTitle.Text = dt.Rows[0]["EventTitle"].ToString();
        lblDate.Text = dt.Rows[0]["Date"].ToString();
        lblTime.Text = dt.Rows[0]["StartingTime"].ToString();
        lblVenue.Text = dt.Rows[0]["Venue"].ToString();
        lblPostedBy.Text = dt.Rows[0]["PostedBy"].ToString();
        lblDescription.Text = dt.Rows[0]["Description"].ToString();
        //lblContactNo.Text = dt.Rows[0]["Title"].ToString();

        imgEvent.ImageUrl = "~/Assets/Images/Event/" + dt.Rows[0]["Image"].ToString();
        btnAllow.CommandArgument = eventID.ToString();
        lblMessage.Text = " ";

    }
    protected void btnAllow_Click(object sender, EventArgs e)
    {
        bool s = true;
        String id =(sender as Button).CommandArgument.ToString();

        int i = ble.AllowEvent(Convert.ToInt32(id), s);
        if (i > 0)
        {
            lblMessage.Text = "Allowed Event Sucessfully";
        }

    }
}