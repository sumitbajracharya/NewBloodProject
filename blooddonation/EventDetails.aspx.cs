using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EventDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PageLoad();



        }
    }

    BLLEvent ble = new BLLEvent();
    public void PageLoad()
    {

        String id = Request.QueryString["EventId"].ToString();
        DataTable dt = BLLEvent.GetEvent_ByEventId(Convert.ToInt32(id));

        lblDate.Text = dt.Rows[0]["Date"].ToString();
        lblTime.Text = dt.Rows[0]["StartingTime"].ToString();
        lblVenue.Text = dt.Rows[0]["Venue"].ToString();
        lblPostedBy.Text = dt.Rows[0]["PostedBy"].ToString();
        lblDescription.Text = dt.Rows[0]["Description"].ToString();



        string img = "";
        if (imgEvent.ImageUrl != "")
        {
            //img = "~/images/kamana/featured/" + dt.Rows[0]["Image"].ToString();
            img = "";
        }

        else
        {
            //img = "~/img/no-img-pg.png";
            img = "~/Assets/Images/Event/" + dt.Rows[0]["Image"].ToString();
        }

        imgEvent.ImageUrl = img;

    }
}