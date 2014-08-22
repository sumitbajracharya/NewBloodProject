using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BloodCenterDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadBloodCenterList();
    }


    BLLBloodCenter blbc = new BLLBloodCenter();
    protected void LoadBloodCenterList()
    {
        {
            DataTable dt = blbc.GetBloodCenterList();
            if (dt.Rows.Count > 0)
            {
                rptBloodCenterList.DataSource = dt;
                rptBloodCenterList.DataBind();
            }
        }
    }


    protected void lnkbtnBloodCenter_click(object sender, EventArgs e)
    {
        int CenterID = int.Parse((sender as LinkButton).CommandArgument);
        DataTable dt = BLLBloodCenter.GetCenter_ByCenterId(CenterID);

        lblLocation.Text = dt.Rows[0]["LocationName"].ToString();
        lblPhoneNumber.Text = dt.Rows[0]["PhoneNumber"].ToString();
        //lblTime.Text = dt.Rows[0]["StartingTime"].ToString();
        //lblVenue.Text = dt.Rows[0]["Venue"].ToString();
        //lblPostedBy.Text = dt.Rows[0]["PostedBy"].ToString();
        //lblDescription.Text = dt.Rows[0]["Description"].ToString();
        //lblContactNo.Text = dt.Rows[0]["Title"].ToString();

        imgBloodCenter.ImageUrl = "~/Assets/Images/BloodCenter/" + dt.Rows[0]["Image"].ToString();
        //btnAllow.CommandArgument = eventID.ToString();
        //lblMessage.Text = " ";

    }
}