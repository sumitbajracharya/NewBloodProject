using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_EventList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    BLLEvent ble = new BLLEvent();
    public void LoadEventList()
    {
        
        DataTable dt = BLLEvent.GetEvent_ByUserId();
        if (dt.Rows.Count > 0)
        {
            //KamanaSlideImage.DataSource = dt;
            //KamanaSlideImage.DataBind();

            rptrEvents.DataSource = dt;
            rptrEvents.DataBind();
        }
    }
}