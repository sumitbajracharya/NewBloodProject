using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PostEventForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // Userid Pass garnu parxa

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        EventInfo _event = new EventInfo();
        _event.EventTitle = txtEventTitle.Text;
        _event.Date = Convert.ToDateTime(txtEventDate.Text);
        _event.StartingTime =  Convert.ToDateTime(txtStartingTime.Text);
        _event.EndingTime = Convert.ToDateTime(txtEndingTime.Text);
        _event.Venue = txtVenue.Text;
        _event.PostedBy = txtPosetedBy.Text;
        _event.Description = txtDescription.Text;
        //_event.UserID = ""; 
        //_event.Image = fupImage.Text;
        //_event.IssueDate = txtLocationName.Text;
        if (fupImage.HasFile)
        {
            fupImage.SaveAs(Server.MapPath("~/Assets/Images/Event/" + fupImage.FileName));
            imgEvent.ImageUrl = "~/Assets/Images/Event/" + fupImage.FileName;
        }
     
        try
        {
            int Result = BLLEvent.CreateEvent(_event);
            if (Result == 1)
            {
                lblMessage.Text = "Event has been successfully added ";
            }

        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;
        }
    }
}

 