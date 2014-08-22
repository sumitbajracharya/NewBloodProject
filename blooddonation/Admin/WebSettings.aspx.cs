using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_WebSettings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEditLocation_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditLocation.aspx");
    }
    protected void btnEditBloodCenter_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditBloodCenter.aspx");
    }
    protected void btnEditBloodGroup_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditBloodGroup.aspx");
    }
    protected void btnEditImageToTheSlider_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditSlider.aspx");
    }
    protected void btnEditNewsArtical_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditNewsArticle.aspx");
    }
    protected void btnAddBloodCenter_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddBloodCenter.aspx");
    }


    protected void btnAddLocaton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddLocation.aspx");
    }
}