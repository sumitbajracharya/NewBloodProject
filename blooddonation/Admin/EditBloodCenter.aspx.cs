using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_EditBloodCenter : System.Web.UI.Page
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
                rptrBloodCenters.DataSource = dt;
                rptrBloodCenters.DataBind();

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


    protected void lnkbtnCenterName_click(object sender, EventArgs e)
    {
        int CenterID = int.Parse((sender as LinkButton).CommandArgument);
        DataTable dt = BLLBloodCenter.GetCenter_ByCenterId(CenterID);

        
        txtCenterName.Text = dt.Rows[0]["Name"].ToString();
        
        ddlLocation.SelectedValue = dt.Rows[0]["LocationID"].ToString();
        txtPhoneNumber.Text = dt.Rows[0]["PhoneNumber"].ToString();
        txtDetails.Text = dt.Rows[0]["Details"].ToString();

        imgCenter.ImageUrl = "~/Assets/Images/BloodCenter/" + dt.Rows[0]["Image"].ToString();
        btnUpdateCenter.CommandArgument = CenterID.ToString();

        hfdImageCenter.Value=dt.Rows[0]["Image"].ToString();
        lblMessage.Text = " ";

    }

   
    protected void btnUpdateCenter_Click(object sender, EventArgs e)
    {
        String id =(sender as Button).CommandArgument.ToString();
        string iuImage = "";
        if (hfdImageCenter.Value != "")
        {
            iuImage = hfdImageCenter.Value.ToString();
        }
        else
        {
            iuImage = fupImage.FileName;
        }

            int i = blbc.UpdateBloodCenter(Convert.ToInt32(id), txtCenterName.Text, ddlLocation.Text, txtPhoneNumber.Text, txtMapCoordinates.Text, iuImage, txtDetails.Text);
            if (i > 0)
            {
                lblMessage.Text = "Updated Sucessfully";
            }

        }

     
    


    //protected void btnAdd_Click(object sender, EventArgs e)
    //{
    //    BloodCenterInfo _bloodcenter = new BloodCenterInfo();
    //    _bloodcenter.Name = txtCenterName.Text;
    //    _bloodcenter.LocationId = Convert.ToInt32(ddlLocation.Text);
    //    _bloodcenter.PhoneNumber = Convert.ToInt32(txtPhoneNumber.Text); ;
    //    //_bloodcenter.MapCoordinates=txtMapCoordinates.Text;


    //    _bloodcenter.Image = "bloodcenter" + fupImage.FileName;
    //    fupImage.PostedFile.SaveAs(Server.MapPath("~/Assets/Images/BloodCenter/" + _bloodcenter.Image));

    //    _bloodcenter.Details = txtDetails.Text;
    //    try
    //    {
    //        int Result = BLLBloodCenter.CreateBloodCenter(_bloodcenter);
    //        if (Result == 1)
    //        {
    //            lblMessage.Text = "News has been successfully added ";
    //        }

    //    }
    //    catch (Exception ex)
    //    {

    //        lblMessage.Text = ex.Message;
    //    }
    //}
}