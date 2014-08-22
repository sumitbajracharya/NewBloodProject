using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_AddBloodCenter : System.Web.UI.Page
{
    BLLBloodCenter blbc = new BLLBloodCenter();
    BLLLocation bllocation = new BLLLocation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = blbc.GetBloodCenterList();
            if (dt.Rows.Count > 0)
            {
                //rptrBloodCenters.DataSource = dt;
                //rptrBloodCenters.DataBind();

                LoadLocation();

            }

        }
    }


    public void LoadLocation()
    {

        DataTable dt = bllocation.GetAllLocation1();
        if (dt.Rows.Count > 0)
        {
            ddlLocation.DataSource = dt;
            ddlLocation.DataTextField = "LocationName";
            ddlLocation.DataValueField = "LocationID";
            ddlLocation.DataBind();


        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        BloodCenterInfo _bloodcenter = new BloodCenterInfo();
        _bloodcenter.Name = txtCenterName.Text;
        _bloodcenter.LocationId = Convert.ToInt32(ddlLocation.Text);
        _bloodcenter.PhoneNumber = Convert.ToInt32(txtNumber.Text); ;
        _bloodcenter.MapCoordinates = txtMapCoordinates.Text;


        _bloodcenter.Image = "bloodcenter" + fupImage.FileName;
        fupImage.PostedFile.SaveAs(Server.MapPath("~/Assets/Images/BloodCenter/" + _bloodcenter.Image));

        _bloodcenter.Details = TxtDetails.Text;
        try
        {
            int Result = BLLBloodCenter.CreateBloodCenter(_bloodcenter);
            if (Result == 1)
            {
                lblMessage.Text = "Blood Center has been successfully added ";
            }

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
    }

   
}