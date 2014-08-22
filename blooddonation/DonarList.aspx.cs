using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DonarList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Location"] != null)
        {

            int _location = int.Parse(Request.QueryString["Location"]);
            int _Bloodgroup = int.Parse(Request.QueryString["BloodGroup"]);
            
            LoadList(_location, _Bloodgroup);

        }
        
    }

    protected void LoadList(int Location, int BloodGroup)
    {
        try
        {
            rptrDonorList.DataSource = BLLUser.GetDonarByLocationAndBloodGroup(Location, BloodGroup);
            rptrDonorList.DataBind();
        }
        catch(Exception ex)
        {
            LblMessage.Text = ex.Message;
        }
    }
}