using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditLocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //dropedown of district connected with database
        ddlDistrict.DataSource = BLLDistrict.GetAllDistrict();
        ddlDistrict.DataTextField = "DistrictName";
        ddlDistrict.DataBind();
        ddlDistrict.Items.Insert(0, "Choose district");
               
    }
    public void LoadGrid()
    {

        gdvLocation.DataSource = BLLLocation.GetAllLocation();
        gdvLocation.DataBind();

    }
     //to show location with the district id
    protected void btnSearch_Click(object sender, EventArgs e)
    {
    
    }

    
}
